package com.itwill.member;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	public final static String NAMESPACE = "com.itwill.member.mapper.MemberMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	public MemberDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<Member> selectByAll() {
		List<Member> memberList = sqlSession.selectList(NAMESPACE + "selectByAll");
		return memberList;
	}
	

	@Override
	public int insertMember(Member member) {
		int insertMember = sqlSession.insert(NAMESPACE + "insertMember", member);
		return insertMember;
	}
	@Override
	public Member selectByOne(int no) {
		Member member = sqlSession.selectOne(NAMESPACE + "selectByOne", no); 
		return member;
	}

	@Override
	public int updateMember(Member member) {
		int updateOk = sqlSession.update(NAMESPACE + "updateMember", member);
		return updateOk;
	}

	
	@Override
	public int deleteMember(int no) {
		int deleteOk = sqlSession.delete(NAMESPACE + "deleteMember", no);
		return deleteOk;
	}

	@Override
	public Member loginMember(Member member) {
		Member loginOk = sqlSession.selectOne(NAMESPACE + "loginMember", member); 
		return loginOk;
	}
	
}
