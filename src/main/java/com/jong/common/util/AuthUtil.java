package com.jong.common.util;

import com.jong.constants.SecurityConstants;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;

/**
 * 
 * @author najon
 *
 * 복붙해서 쓰자
 * 
 * 내가 서명해서 보낸 JWT의 내용물을 꺼내주는 아주 중요한 놈이다
 * 
 *  Spring JWT에서 정해진 대로 쓰는 놈이다
 *  
 *  어느 클래스를 타고서 여기까지 내려오는지는 잘 모르겠다
 */
public class AuthUtil {

	public static String getMemberByUsernameJWT(String header) throws Exception {
		System.out.println("## AuthUtil getMemberByUsernameJWT");
		String token = header.substring(7);
        
		byte[] signingKey = SecurityConstants.JWT_SECRET.getBytes();

		Jws<Claims> parsedToken = Jwts.parser()
			.setSigningKey(signingKey)
			.parseClaimsJws(token);
        
		String subject = parsedToken.getBody().getSubject();
        
		String username = subject;

		return username;
	}
}
