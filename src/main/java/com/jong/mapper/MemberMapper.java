package com.jong.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jong.model.Member;
import com.jong.model.MemberAuth;

public interface MemberMapper {

	/**
	 * 
	 * @param username
	 * @return
	 * 
	 * CustomUserDetailsService.java 이곳에서 쓰이는 
	 * Member member = memberMapper.getMemberByUsername(username);
	 * 의 mapper를 여기서 정의하는것이다.
	 */
	public Member getMemberByUsername(@Param("username") String username);
	public Member getMemberByIdx(@Param("idx") int idx);

	public int cntAllMembers();

	public int register(Member member);

	public void addAuth(MemberAuth memberAuth);

	public void deleteAuth(int memberIdx);

	public void updateMember(Member member);

	public void delete(int memberIdx);

	public List<Member> getAllMembers();
	
}
