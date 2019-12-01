package com.itwill.member;

import java.util.List;

public interface MemberDao {
	Member loginMember(Member member);
	
	List<Member> selectByAll();
	
	Member selectByOne(int no);
	
	int insertMember(Member member);
	
	int updateMember(Member member);

	int deleteMember(int no);
}
