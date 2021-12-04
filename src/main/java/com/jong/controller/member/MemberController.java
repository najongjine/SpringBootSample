package com.jong.controller.member;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.jong.common.util.AuthUtil;
import com.jong.filter.JwtAuthenticationFilter;
import com.jong.filter.JwtAuthorizationFilter;
import com.jong.model.Member;
import com.jong.service.member.MemberService;

import lombok.extern.java.Log;

/**
 * 
 * @author najon
 *
 * @PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_MEMBER')") :={
 * 	annotation
 * 	이것만 적어주면 스프링이 알아서 해당 사용자가 접근가능한 controller인지 아닌지 판단해준다.
 *  근데 이것은 기억해둘 필요가 있다.
 *  MSA, CSR 방식에서 sign한 토큰은 옛날 정보를 토대로 controller에 도달한다.
 *  
 *   예를들어 스프링이 a라는 사용자에게 00:58 시에 토큰을 사인해 보내고, 운영자가 a라는 사용자를 1:00 시에 차단했다고 하자.
 *   a라는 사용자는 1:02 시에 컨트롤러에 접근했다고 가정하자.
 *   스프링 세큐리티는 이것까지 검증해주진 않는다. 왜냐면 1:02시에 도착한 토큰은 스프링 입장에선 깨끗한 상태를 가진 토큰이라 판단하고
 *   a라는 사용자를 controller에 들어오도록 허가해 버린다는 점이다.
 *   
 *   다시한번 더 상기하자.
 *   이 sliding 토큰 기법이 보안을 책임져주지 않는다.
 *   그냥 가랑비 좀 덜맞자고 덮개하나 씌우는 정도의 보안기법이다!!!
 *   토네이도를 절대 막아주지는 않는다!!!
 * }
 * 
 * public Map signSlidingToken(@RequestBody Map<String,String> oldUserToken) throws Exception:={
 * 	슬라이딩 토큰 처리를 담당하는 컨트롤러이다
 * @PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_MEMBER')") 이 부분은 옵션이다.
 *  나는 그냥 테스트 해볼려고 붙여봤다.
 *  이것을 붙일지 말지는 각 프로젝트의 구성과 의도마다 달라질 것이다
 *  
 *  resultJson.put("success", true);
	resultJson.put("data", newUserToken);
	resultJson.put("msg", "new sliding token");
	이 부분은 
	nodeJS로 치면 {
		success:true,
		data: Object...
		msg:"뭐뭐뭐"
	}
 * }
 */
@Log
@RestController
@RequestMapping("/users")
public class MemberController {

	@Autowired
	private MemberService service;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private MessageSource messageSource;
	
	@RequestMapping(value = "/register", method = RequestMethod.POST )
	public ResponseEntity<Member> register(@Validated @RequestBody Member member) throws Exception {
		log.info("## member.getUserName() = " + member.getUsername());
		
		String inputPassword = member.getPassword();
		member.setPassword(passwordEncoder.encode(inputPassword));
		
		service.register(member);
		member.setPassword("dummy");

		log.info("register member.idx() = " + member.getIdx());
		
		return new ResponseEntity<>(member, HttpStatus.OK);
	}
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ResponseEntity<List<Member>> list() throws Exception {
		return new ResponseEntity<>(service.list(), HttpStatus.OK);
	}

	@RequestMapping(value = "/{userNo}", method = RequestMethod.GET)
	public ResponseEntity<Member> read(@PathVariable("userNo") int userNo) throws Exception {
		Member member = service.getMemberByIdx(userNo);
		
		return new ResponseEntity<>(member, HttpStatus.OK);
	}

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@RequestMapping(value = "/{userNo}", method = RequestMethod.DELETE)
	public ResponseEntity<Void> remove(@PathVariable("userNo") int userNo) throws Exception {
		service.remove(userNo);

		return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
	}
	
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_MEMBER')")
	@RequestMapping(value = "/myinfo", method = RequestMethod.GET)
	public ResponseEntity<Member> getMyInfo(@RequestHeader (name="Authorization") String header) throws Exception {		
		String username = AuthUtil.getMemberByUsernameJWT(header);
	
		Member member = service.getMemberByUsername(username);
		
		member.setPassword("");
		
		return new ResponseEntity<>(member, HttpStatus.OK);
	}
	
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_MEMBER')")
	@RequestMapping(value = "/sign_sliding_token", method = RequestMethod.POST)
	public Map signSlidingToken(@RequestBody Map<String,String> oldUserToken) throws Exception {	
		System.out.println("## oldUserToken in controller: "+oldUserToken.get("oldUserToken"));
		String username=JwtAuthorizationFilter.getAuthenticationSlidingToken(oldUserToken.get("oldUserToken"));
		Member member=service.getMemberByUsername(username);
		String newUserToken=JwtAuthenticationFilter.signSlidingToken(member.getUsername(),member.getAuthList());
		Map resultJson=new LinkedHashMap<String, Object>();
		resultJson.put("success", true);
		resultJson.put("data", newUserToken);
		resultJson.put("msg", "new sliding token");
		
		return resultJson;
	}

}
