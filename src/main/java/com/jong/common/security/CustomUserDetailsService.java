package com.jong.common.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.jong.common.security.domain.CustomUser;
import com.jong.mapper.MemberMapper;
import com.jong.model.Member;

import lombok.extern.java.Log;

/**
 * Customize it!!!
 * @author najon
 *
 * 이 클래스도 복붙해서 가져가자
 * 
 * 스프링 세큐리티에서 재일 중요한 부분이다.
 * 로그인 처리는 꼭 이 서비스를 거쳐야 되고, 꼭 이 클래스를 써야한다.
 * 
 * private MemberMapper memberMapper := {
 *  내가 정의한 회원 로그인 매퍼이다.
 * }
 * 
 * Member member = memberMapper.getMemberByUsername(username) :={
 * 	DB에서 회원 정보를 가져오는 쿼리를 실행 시키는 부분.
 * }
 * 
 * 이 클래스를 복붙해서 프로젝트를 시작하면 상관이 없는데,
 * 이미 덩치가 커져버린 프로젝트라면 Customize!!! 라는 부분을 내 프로젝트에 맞게끔 수정해야 한다
 * 
 * 이곳에서의 목표는 username 으로 유저정보를 조회하는 쿼리를 실행하는 것이다.
 * 비밀번호 매칭은 여기서 하지 않는다.
 */
@Log
public class CustomUserDetailsService implements UserDetailsService {
	
	@Autowired
	//Customize it!!!
	private MemberMapper memberMapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.info("CustomUserDetailsService Load User By UserName : " + username);
		//Customize it!!!
		Member member = memberMapper.getMemberByUsername(username);

		log.info("queried by member mapper: " + member);

		return member == null ? null : new CustomUser(member);
	} 

}
