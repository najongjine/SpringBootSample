package com.jong.service.member;

import java.util.List;

import com.jong.model.Member;

public interface MemberService {
	
	public int countAll() throws Exception;
	
	public void register(Member member) throws Exception;
	
	/**
	 * 
	 * @param username
	 * @return
	 * @throws Exception
	 * 
	 * 꼭 필요한 서비스
	 */
	public Member getMemberByUsername(String username) throws Exception;
	
	public Member getMemberByIdx(int idx) throws Exception;

	public void modify(Member member) throws Exception;

	public void remove(int userNo) throws Exception;

	public List<Member> list() throws Exception;

}
