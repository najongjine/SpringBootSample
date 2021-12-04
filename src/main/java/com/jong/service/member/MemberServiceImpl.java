package com.jong.service.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.jong.mapper.MemberMapper;
import com.jong.model.Member;
import com.jong.model.MemberAuth;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper mMember;
	
	@Override
	public int countAll() throws Exception {
		return mMember.cntAllMembers();
	}

	@Transactional
	@Override
	public void register(Member member) throws Exception {
		mMember.register(member);
		System.out.println("## memberIdx: "+ member.getIdx());
		
		MemberAuth memberAuth = new MemberAuth();

		memberAuth.setMember_idx(member.getIdx());
		memberAuth.setAuth("ROLE_MEMBER");

		mMember.addAuth(memberAuth);
	}
	
	/**
	 * 꼭 필요한 서비스
	 */
	@Override
	public Member getMemberByUsername(String username) throws Exception {
		
		return mMember.getMemberByUsername(username);
	}

	@Transactional
	@Override
	public void modify(Member member) throws Exception {
		mMember.updateMember(member);

		int memberIdx = member.getIdx();

		mMember.deleteAuth(memberIdx);

		List<MemberAuth> authList = member.getAuthList();

		for (int i = 0; i < authList.size(); i++) {
			MemberAuth memberAuth = authList.get(i);

			String auth = memberAuth.getAuth();

			if (auth == null) {
				continue;
			}

			if (auth.trim().length() == 0) {
				continue;
			}

			memberAuth.setMember_idx(memberIdx);

			mMember.addAuth(memberAuth);
		}

	}

	@Transactional
	@Override
	public void remove(int userNo) throws Exception {
		mMember.deleteAuth(userNo);

		mMember.delete(userNo);
	}

	@Override
	public List<Member> list() throws Exception {
		return mMember.getAllMembers();
	}

	@Override
	public Member getMemberByIdx(int idx) throws Exception {
		return mMember.getMemberByIdx(idx);
	}
	
}
