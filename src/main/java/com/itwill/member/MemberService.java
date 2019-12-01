package com.itwill.member;

import java.util.List;

public interface MemberService {
	
	Member loginMember(Member member);
	
	List<Member> selectByAll();
	
	int insertMember(Member member);
	
	Member selectByOne(int no);
	
	int updateMember(Member member);
	
	int deleteMember(int no);
	 
}
