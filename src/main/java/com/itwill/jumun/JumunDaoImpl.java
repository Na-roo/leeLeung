package com.itwill.jumun;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("JumunDao")
public class JumunDaoImpl implements JumunDao {
	public final static String NAMESPACE = "com.itwill.jumun.mapper.JumunMapper.";
	@Autowired
	private SqlSession sqlSession;	
	
	public JumunDaoImpl() throws Exception {
		// TODO Auto-generated constructor stub
	}
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	/*
	 * 총 주문 리스트
	 */
	
	@Override
	public List<Jumun> selectByAll() throws Exception {
		List<Jumun> jumunList = sqlSession.selectList(NAMESPACE + "selectByAll");
		return jumunList;
	}
	
	/*
	 * 총 주문 가격
	 */
	
	@Override
	public int selectByAllPrice() throws Exception {
		int jumunAllPrice = sqlSession.selectOne(NAMESPACE + "selectByAllPrice") ;
		return jumunAllPrice;
	}
	
	/*
	 * 총 주문 건수
	 */
	
	@Override
	public int selectByAllCount() throws Exception {
		int jumunAllCount = sqlSession.selectOne(NAMESPACE + "selectByAllCount") ;
		return jumunAllCount;
	}
	
	/*
	 * 회원번호로 회원 총 주문 가격
	 */
	
	@Override
	public int selectByOnePrice(int memberNo) throws Exception {
		int jumunOnePrice = sqlSession.selectOne(NAMESPACE + "selectByOnePrice") ;
		return jumunOnePrice;
	}
	
	/*
	 * 회원번호로 회원 총 주문 건수
	 */
	
	@Override
	public int selectByOneCount(int memberNo) throws Exception {
		int jumunOneCount = sqlSession.selectOne(NAMESPACE + "selectByOneCount") ;
		return jumunOneCount;
	}
	
	/*
	 * 주문번호로 주문 하나찾기
	 */
	
	@Override
	public Jumun selectByOne(int no) throws Exception {
		Jumun jumun = sqlSession.selectOne(NAMESPACE+ "selectByOne", no);
		return jumun;
	}
	
	/*
	 * 회원번호로 주문 찾기
	 */
	
	@Override
	public List<Jumun> selectByMemberNo(int no) throws Exception {
		List<Jumun> jumun = sqlSession.selectList(NAMESPACE+ "selectByMemberNo", no);
		return jumun;
	}
	
	/*
	 * 주문 추가
	 */
	
	@Override
	public int insertJumun(Jumun jumun) throws Exception {
		int insertOk = sqlSession.insert(NAMESPACE + "insertJumun", jumun);
		return insertOk;
	}
	
	/*
	 * 주문번호로 찾은 주문 수정
	 */
	
	@Override
	public int updateJumun(Jumun jumun) throws Exception {
		int updateOk = sqlSession.update(NAMESPACE + "updateJumun", jumun);
		return updateOk;
	}

	/*
	 * 주문번호로 주문 삭제
	 */
	
	@Override
	public int deleteJumun(int no) throws Exception {
		int deleteOk = sqlSession.delete(NAMESPACE + "deleteJumun", no);
		return deleteOk;
	}
	
	/*
	 * 주문완료페이지에서 주문번호 찾기
	 */
	
	@Override
	public int selectJumunNo() throws Exception {
		int selectJumunNo = sqlSession.selectOne(NAMESPACE + "selectJumunNo");
		return selectJumunNo;
	}
	
	
	
	
}
