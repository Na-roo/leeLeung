package com.itwill.board.boardReview;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("boardReviewDao")
public class BoardReviewDaoImpl implements BoardReviewDao {
	public static final String NAMESPACE = "com.itwill.boardReview.mapper.BoardReviewMapper.";
	@Autowired
	private SqlSession sqlSession;
	
	public BoardReviewDaoImpl() {
		// TODO Auto-generated constructor stub
	}
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<BoardReview> selectByAll(int startPageNo, int endPageNo) throws Exception{
		HashMap map=new HashMap();
		map.put("startRowNum", startPageNo);
		map.put("endRowNum", endPageNo);
		return sqlSession.selectList(NAMESPACE + "selectByAll",map);
	}
	
	//총게시글 갯수구하기
	@Override
	public int boardReviewCount() throws Exception {
		int boardReviewCount = sqlSession.selectOne(NAMESPACE+"boardReviewCount");
		return boardReviewCount;
	}
	
	@Override
	public BoardReview selectByOne(int reviewNo) throws Exception{
		return sqlSession.selectOne(NAMESPACE + "selectByOne", reviewNo);
	}

	@Override
	public int insertBoardReview(BoardReview boardReview) throws Exception{
		return sqlSession.insert(NAMESPACE + "insertBoardReview", boardReview);
	}

	@Override
	public int updateBoardReview(BoardReview boardReview) throws Exception{
		return sqlSession.update(NAMESPACE + "updateBoardReview", boardReview);
	}

	@Override
	public int deleteBoardReview(int reviewNo) throws Exception{
		return sqlSession.delete(NAMESPACE + "deleteBoardReview", reviewNo);
	}
	
	@Override
	public void reviewViewCount(int reviewNo) throws Exception{
		sqlSession.update(NAMESPACE + "reviewViewCount", reviewNo);	
	}
}
