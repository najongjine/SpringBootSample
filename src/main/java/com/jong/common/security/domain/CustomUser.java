package com.jong.common.security.domain;

import java.util.Collection;

import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.jong.model.Member;

/**
 * 
 * @author najon
 * 
 * 복붙해서 쓰자.
 *
 * 스프링 security 에서 회원관련된 model은 무조건 이 클래스를 써야한다.
 * Customize it!!! 부분은 이미 진행하던 프로젝트가 덩치가 너무 켜져서 직접 수정해야할때 수정해야하는 부분이다
 * 
 * private Member member:={
 * 	Member 라는 클래스는 회원 model이다.
 *  Member 대신 내가 구성한 회원 model을 적어주면 된다.
 * }
 */

public class CustomUser extends User {

	private static final long serialVersionUID = 1L;

	//Customize it!!!
	private Member member;

	public CustomUser(String username, String password, 
			Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}

	// Customize it!!!
	public CustomUser(Member member) {

		super(member.getUsername(), member.getPassword(), member.getAuthList().stream()
				.map(auth -> new SimpleGrantedAuthority(auth.getAuth())).collect(Collectors.toList()));

		this.member = member;
	}

	//Customize it!!!
	public Member getMember() {
		return member;
	}
}
