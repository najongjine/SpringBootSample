package com.jong.common.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.jong.common.exeption.ApiErrorInfo;

/**
 * 
 * @author najon
 *
 * 이 클래스도 복붙해서 가져가자
 * 정확히 어느클래스에서 어느클래스를 타고 내려와서 실행시키는지는 모른다.
 */

public class CustomAccessDeniedHandler implements AccessDeniedHandler {

	@Override
	public void handle(HttpServletRequest req, HttpServletResponse res, AccessDeniedException accessDeniedException) throws IOException, ServletException {
		ApiErrorInfo apiErrorInfo = new ApiErrorInfo();
		apiErrorInfo.setMessage("Access denied");

		ObjectMapper mapper = new ObjectMapper();

		String jsonString = mapper.writeValueAsString(apiErrorInfo);

		res.setContentType("application/json;charset=UTF-8");
		res.setStatus(403);
		res.getWriter().write(jsonString);
	}
}
