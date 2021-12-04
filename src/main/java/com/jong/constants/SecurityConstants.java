package com.jong.constants;

/**
 * 
 * @author najon
 *
 * 스프링 세큐리티와 JWT에 설정값을 먹일때 이쪽 한곳을 바라보게 하기위한 static 클래스이다
 */
public final class SecurityConstants {

	public static final String AUTH_LOGIN_URL = "/api/authenticate";

	public static final String JWT_SECRET = "n2r5u8x/A%D*G-KaPdSgVkYp3s6v9y$B&E(H+MbQeThWmZq4t7w!z%C*F-J@NcRf";

	public static final String TOKEN_HEADER = "Authorization";
	public static final String TOKEN_PREFIX = "Bearer ";
	public static final String TOKEN_TYPE = "JWT";
	public static final String TOKEN_ISSUER = "secure-api";
	public static final String TOKEN_AUDIENCE = "secure-app";
	
	/**
	 * 35분짜리 유효기간
	 */
	public static final long TOKEN_LIFE_TIME_MILISEC = 35*60*1000;
}
