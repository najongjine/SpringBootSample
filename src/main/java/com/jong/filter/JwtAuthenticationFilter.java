package com.jong.filter;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.FilterChain;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.jong.constants.SecurityConstants;
import com.jong.model.MemberAuth;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;

/**
 * 
 * @author najon
 * 
 * 유저토큰을 만들어주는 클래스
 * 
 * public static String signSlidingTokenV2(old 유저토큰) :={
 * 	만약에 토큰에 유저권한을 실어 보낼때 유저권한 검사가 필요 없고 그냥 토큰이 조작됬는지 아닌지만 확인하고
 * 	토큰에서 나온 유저정보를 그대로 다시 토큰으로 만들어 주는 클래스
 * 
 * }
 * public static String signSlidingToken(String username,List<MemberAuth> authList) :={
 * 	DB 에서 유저 권한을 한번더 검증한후 DB에서 나온 유저 이름과 권한을 기반으로 토큰을 다시 만들때 쓰는 클래스
 * 
 *  이 예제에서는 이 함수를 사용해서 sliding token을 만들었다
 *  
 * 	참고로 토큰을 만드는 곳에선 DB 검사를 하지 않는다 
 * 
 *  컨트롤러에서 회원 서비스를 이용해서 회원 정보를 다시 가져오도록 구현했다
 * }
 * 
 * 
 *
 */
@CrossOrigin(exposedHeaders = "authorization")
public class JwtAuthenticationFilter extends UsernamePasswordAuthenticationFilter {
	private final AuthenticationManager authenticationManager;

	public JwtAuthenticationFilter(AuthenticationManager authenticationManager) {
		this.authenticationManager = authenticationManager;

		setFilterProcessesUrl(SecurityConstants.AUTH_LOGIN_URL);
	}

	@Override
	public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response)
			throws AuthenticationException {
		System.out.println("## JwtAuthenticationFilter attemptAuthentication : "+request.getRemoteAddr()); // Prints ip address 
		/**
		 * 클라에서 회원 정보를 query string으로 보낼때 query string 변수의 이름과 이곳이 일치 해야한다
		 */
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		Authentication authenticationToken = new UsernamePasswordAuthenticationToken(username, password);

		return authenticationManager.authenticate(authenticationToken);
	}

	@Override
	protected void successfulAuthentication(HttpServletRequest request, HttpServletResponse response,
			FilterChain filterChain, Authentication authentication) {
		User user = (User) authentication.getPrincipal();

		List<String> roles = user.getAuthorities().stream().map(GrantedAuthority::getAuthority)
				.collect(Collectors.toList());

		byte[] signingKey = SecurityConstants.JWT_SECRET.getBytes();

		String token = Jwts.builder().signWith(Keys.hmacShaKeyFor(signingKey), SignatureAlgorithm.HS512)
				.setHeaderParam("typ", SecurityConstants.TOKEN_TYPE).setIssuer(SecurityConstants.TOKEN_ISSUER)
				.setAudience(SecurityConstants.TOKEN_AUDIENCE).setSubject(user.getUsername())
				.setExpiration(new Date(System.currentTimeMillis() + SecurityConstants.TOKEN_LIFE_TIME_MILISEC)).claim("rol", roles).compact();

		response.addHeader(SecurityConstants.TOKEN_HEADER, SecurityConstants.TOKEN_PREFIX + token);
		response.addHeader("username", user.getUsername());
		System.out.println("## JwtAuthenticationFilter successfulAuthentication :" + response.getHeaders("username"));
	}

	public static String signSlidingToken(String username,List<MemberAuth> authList) {
		if (CheckIsEmptyNotEmpty.isNotEmpty(username)) {
			try {
				byte[] signingKey = SecurityConstants.JWT_SECRET.getBytes();
				System.out.println("## JwtAuthenticationFilter username: "+username);
				
				if (!CheckIsEmptyNotEmpty.isNotEmpty(username)) {
					return null;
				}
				List<String> roles = authList.stream().map(MemberAuth::getAuth)
						.collect(Collectors.toList());
				String token = Jwts.builder().signWith(Keys.hmacShaKeyFor(signingKey), SignatureAlgorithm.HS512)
						.setHeaderParam("typ", SecurityConstants.TOKEN_TYPE).setIssuer(SecurityConstants.TOKEN_ISSUER)
						.setAudience(SecurityConstants.TOKEN_AUDIENCE).setSubject(username)
						.setExpiration(new Date(System.currentTimeMillis() + SecurityConstants.TOKEN_LIFE_TIME_MILISEC)).claim("rol", roles).compact();
				return token;
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				return null;
			}
		}

		return null;
	}
	public String signSlidingTokenV2(String oldUserToken) {
		if (CheckIsEmptyNotEmpty.isNotEmpty(oldUserToken)) {
			try {
				byte[] signingKey = SecurityConstants.JWT_SECRET.getBytes();
				Jws<Claims> parsedToken = Jwts.parser().setSigningKey(signingKey)
						.parseClaimsJws(oldUserToken.replace("Bearer ", ""));
				String username = parsedToken.getBody().getSubject();
				System.out.println("## JwtAuthenticationFilter username: "+username);
				
				List<SimpleGrantedAuthority> authorities = ((List<?>) parsedToken.getBody().get("rol")).stream()
						.map(authority -> new SimpleGrantedAuthority((String) authority)).collect(Collectors.toList());

				if (CheckIsEmptyNotEmpty.isEmpty(username)) {
					return null;
				}
				List<String> roles = authorities.stream().map(GrantedAuthority::getAuthority)
						.collect(Collectors.toList());
				String token = Jwts.builder().signWith(Keys.hmacShaKeyFor(signingKey), SignatureAlgorithm.HS512)
						.setHeaderParam("typ", SecurityConstants.TOKEN_TYPE).setIssuer(SecurityConstants.TOKEN_ISSUER)
						.setAudience(SecurityConstants.TOKEN_AUDIENCE).setSubject(username)
						.setExpiration(new Date(System.currentTimeMillis() + SecurityConstants.TOKEN_LIFE_TIME_MILISEC)).claim("rol", roles).compact();
				return token;
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				return null;
			}
		}

		return null;
	}

	
}
