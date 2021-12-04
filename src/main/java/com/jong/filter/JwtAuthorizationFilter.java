package com.jong.filter;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

import com.jong.constants.SecurityConstants;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.MalformedJwtException;
import io.jsonwebtoken.SignatureException;
import io.jsonwebtoken.UnsupportedJwtException;

/**
 * 
 * @author najon
 * 
 * 클라에서 온 토큰을 검증하는 클래스
 * 
 * public static String getAuthenticationSlidingToken(String oldToken) :={
 * 	받은 토큰이 조작이 됬는지 안됬는지 검수하고,
 *  토큰에 담긴 유저이름을 리턴해준다
 * }
 *
 */
public class JwtAuthorizationFilter extends BasicAuthenticationFilter {

	private static final Logger log = LoggerFactory.getLogger(JwtAuthorizationFilter.class);

	public JwtAuthorizationFilter(AuthenticationManager authenticationManager) {
		super(authenticationManager);
	}

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		System.out.println("## JwtAuthorizationFilter doFilterInternal");
		Authentication authentication = getAuthentication(request);
		String header = request.getHeader(SecurityConstants.TOKEN_HEADER);

		if (CheckIsEmptyNotEmpty.isEmpty(header) || !header.startsWith(SecurityConstants.TOKEN_PREFIX)) {
			filterChain.doFilter(request, response);
			return;
		}

		SecurityContextHolder.getContext().setAuthentication(authentication);
		filterChain.doFilter(request, response);
	}

	private UsernamePasswordAuthenticationToken getAuthentication(HttpServletRequest request) {
		/**
		 * 클라에서 로그인한후, 매번 요청마다 여기를 거침. 어느 컨트롤러건 상관없이 암묵적으로 얘가 먼저 실행됨 token 이라는 변수에 유저토큰이
		 * 담겨있음
		 */
		System.out.println("## JwtAuthorizationFilter getAuthentication");
		String token = request.getHeader(SecurityConstants.TOKEN_HEADER);
		if (CheckIsEmptyNotEmpty.isNotEmpty(token)) {
			try {
				byte[] signingKey = SecurityConstants.JWT_SECRET.getBytes();

				Jws<Claims> parsedToken = Jwts.parser().setSigningKey(signingKey)
						.parseClaimsJws(token.replace("Bearer ", ""));

				String username = parsedToken.getBody().getSubject();

				List<SimpleGrantedAuthority> authorities = ((List<?>) parsedToken.getBody().get("rol")).stream()
						.map(authority -> new SimpleGrantedAuthority((String) authority)).collect(Collectors.toList());

				if (CheckIsEmptyNotEmpty.isNotEmpty(username)) {
					return new UsernamePasswordAuthenticationToken(username, null, authorities);
				}
			} catch (ExpiredJwtException exception) {
				log.warn("Request to parse expired JWT : {} failed : {}", token, exception.getMessage());
			} catch (UnsupportedJwtException exception) {
				log.warn("Request to parse unsupported JWT : {} failed : {}", token, exception.getMessage());
			} catch (MalformedJwtException exception) {
				log.warn("Request to parse invalid JWT : {} failed : {}", token, exception.getMessage());
			} catch (SignatureException exception) {
				log.warn("Request to parse JWT with invalid signature : {} failed : {}", token, exception.getMessage());
			} catch (IllegalArgumentException exception) {
				log.warn("Request to parse empty or null JWT : {} failed : {}", token, exception.getMessage());
			}
		}
		return null;
	}

	public static String getAuthenticationSlidingToken(String oldToken) {

		String token = oldToken;
		if (CheckIsEmptyNotEmpty.isNotEmpty(token)) {
			try {
				byte[] signingKey = SecurityConstants.JWT_SECRET.getBytes();

				Jws<Claims> parsedToken = Jwts.parser().setSigningKey(signingKey)
						.parseClaimsJws(token.replace("Bearer ", ""));

				String username = parsedToken.getBody().getSubject();

				if (CheckIsEmptyNotEmpty.isNotEmpty(username)) {
					return username;
				}
			} catch (ExpiredJwtException exception) {
				log.warn("Request to parse expired JWT : {} failed : {}", token, exception.getMessage());
			} catch (UnsupportedJwtException exception) {
				log.warn("Request to parse unsupported JWT : {} failed : {}", token, exception.getMessage());
			} catch (MalformedJwtException exception) {
				log.warn("Request to parse invalid JWT : {} failed : {}", token, exception.getMessage());
			} catch (SignatureException exception) {
				log.warn("Request to parse JWT with invalid signature : {} failed : {}", token, exception.getMessage());
			} catch (IllegalArgumentException exception) {
				log.warn("Request to parse empty or null JWT : {} failed : {}", token, exception.getMessage());
			}
		}

		return null;
	}

}
