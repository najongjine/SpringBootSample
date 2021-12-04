package com.jong.config;

import java.util.Arrays;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import com.jong.common.security.CustomAccessDeniedHandler;
import com.jong.common.security.CustomUserDetailsService;
import com.jong.filter.JwtAuthenticationFilter;
import com.jong.filter.JwtAuthorizationFilter;

/**
 * 
 * @author najon
 *
 * 무조건 안되안되 하는 스프링 세큐리티를 타협을 보게해주는 옵션 설정이라 보면 된다
 * 
 * CorsConfigurationSource 이쪽에 보안을 많이 풀어줘야 하는것이 있다.
 * 향단코드에서는 jquery ajax의 xrh 에서 토큰을 꺼내던데 나는 리엑트에서 그렇게 하는법을
 * 도저히 모르겠어서 그냥 보안을 풀어버렸다
 */
@CrossOrigin(exposedHeaders = "authorization")
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled=true, securedEnabled=true)
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	DataSource dataSource;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.cors()
		.and()
		.csrf().disable()
		.exceptionHandling()
		.accessDeniedHandler(accessDeniedHandler())
		.and()
		.addFilter(new JwtAuthenticationFilter(authenticationManager()))
		.addFilter(new JwtAuthorizationFilter(authenticationManager()))
		.sessionManagement()
		.sessionCreationPolicy(SessionCreationPolicy.STATELESS);
	}
	
	@Bean
	public UserDetailsService createUserDetailsService() {
		return new CustomUserDetailsService();
	}
	
	@Bean
	public PasswordEncoder createPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(createUserDetailsService())
		.passwordEncoder(createPasswordEncoder());
	}
	
	@Bean
	public CorsConfigurationSource corsConfigurationSource() {
		CorsConfiguration configuration = new CorsConfiguration();
	    configuration.setAllowCredentials(true);
	    //configuration.setAllowedOrigins(Arrays.asList(FRONT_END_SERVER));
	    configuration.setAllowedMethods(Arrays.asList("GET", "POST", "PUT", "DELETE"));
	    configuration.setAllowedHeaders(Arrays.asList("X-Requested-With","Origin","Content-Type","Accept","Authorization"));

	    // Axios에서 headers.authorization 으로 토큰을 쉽게 꺼낼수 있게 해주는 코드
	    configuration.setExposedHeaders(Arrays.asList("Access-Control-Allow-Headers", "Authorization, username, x-xsrf-token, Access-Control-Allow-Headers, Origin, Accept, X-Requested-With, " +
	            "Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers"));
	    configuration.applyPermitDefaultValues();
		final UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
		source.registerCorsConfiguration("/**", configuration);
		

		return source;
	}

	@Bean
	public AccessDeniedHandler accessDeniedHandler(){
		return new CustomAccessDeniedHandler();
	}
}
