package com.jong.filter;

/**
 * 
 * @author najon
 * 
 * 복붙해서 쓰자.
 * 
 * 서버에서 받은 토큰이 null인지 아닌지를 체크해주는 스테틱 클래스
 *
 */
public class CheckIsEmptyNotEmpty {
	public static boolean isEmpty(final CharSequence cs) {
		return cs == null || cs.length() == 0;
	}

	public static boolean isNotEmpty(final CharSequence cs) {
		return !isEmpty(cs);
	}
}
