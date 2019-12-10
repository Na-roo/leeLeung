package com.itwill.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberDao;

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	@Override
	public List<Member> selectByAll(){
		return memberDao.selectByAll();
	}
	
	@Override
	public int insertMember(Member member) {
		return memberDao.insertMember(member);
	}

	
	@Override
	public Member selectByOne(int no) {
		return memberDao.selectByOne(no);
	}

	@Override
	public int updateMember(Member member) {
		return memberDao.updateMember(member);
	}
	
	@Override
	public int deleteMember(int no) {
		return memberDao.deleteMember(no);
	}

	@Override
	public Member loginMember(Member member) {
		return memberDao.loginMember(member);
	}
	
}
