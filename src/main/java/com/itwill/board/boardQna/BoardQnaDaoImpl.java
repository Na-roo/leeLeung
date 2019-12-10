package com.itwill.board.boardQna;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.board.boardQna.BoardQna;

@Repository("boardQnaDao")
public class BoardQnaDaoImpl implements BoardQnaDao {
	public final static String NAMESPACE = "com.itwill.board.mapper.BoardQnaMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	public BoardQnaDaoImpl() throws Exception {
		System.out.println("1.### BoardQnaDaoImpl()생성");
	}

	public void setSqlSession(SqlSession sqlSession) {
		System.out.println("2.### BoardQnaDaoImpl: setSqlSession("+sqlSession+")메쏘드실행");
		this.sqlSession = sqlSession;
	}
	
	/*
	 * 게시물 리스트 전체보기
	 * */
	@Override
	public List<BoardQna> boardQnaList(int startRowNum,int endRowNum, String searchOption , String keyword) throws Exception {
		HashMap paramMap = new HashMap();
		paramMap.put("startRowNum", startRowNum);
		paramMap.put("endRowNum", endRowNum);
		paramMap.put("searchOption", searchOption);
		paramMap.put("keyword", keyword);
		List<BoardQna> boardQnaList = sqlSession.selectList(NAMESPACE + "boardQnaList", paramMap);
		return boardQnaList;
	}
	
	/*
	 * 게시물 리스트 갯수 알아내기
	 * */
	@Override
	public int boardQnaListCount() throws Exception {
		int boardQnaListCount = sqlSession.selectOne(NAMESPACE + "boardQnaCount");
		return boardQnaListCount;
	}
	
	/*
	 * 게시물 리스트 검색기능
	 * */
	@Override
	public List<BoardQna> listAll(String searchOption, String keyword) throws Exception {
		// 검색옵션, 키워드 맵에 저장
		HashMap map = new HashMap();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return sqlSession.selectList(NAMESPACE + "listAll", map);
	}
	
	/*
	 * 게시물 검색 후 갯수 알아내기
	 * */
	@Override
	public int countArticle(String searchOption, String keyword) throws Exception {
		// 검색옵션, 키워드 맵에 저장
		HashMap map = new HashMap();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return sqlSession.selectOne(NAMESPACE + "countArticle", map);
	}
	
	/*
	 * 게시물 조회(번호)
	 * */
	@Override
	public BoardQna boardQnaSelectByQnaNo(int qnaNo) throws Exception {
		BoardQna boardQna = null;
		boardQna = sqlSession.selectOne(NAMESPACE + "boardQnaSelectByQnaNo", qnaNo);
		return boardQna;
	}
	
	/*
	 * 게시물 작성하기
	 * */
	@Override
	public int insertBoardQna(BoardQna boardQna) throws Exception {
		int insertQnaBoard = sqlSession.insert(NAMESPACE + "boardQnaInsert", boardQna);
		return insertQnaBoard;
	}
	
	/*
	 * 게시물 수정하기
	 * */
	@Override
	public int boardQnaUpdate(BoardQna boardQna) throws Exception {
		int updateQuery = sqlSession.update(NAMESPACE + "boardQnaUpdate", boardQna);
		return updateQuery;
	}
	
	
	/*
	 * 게시물 삭제하기(번호)
	 * */
	@Override
	public int deleteBoardQna(int qnaNo) throws Exception {
		int deleteQnaBoard = sqlSession.delete(NAMESPACE + "boardQnaDeleteByNo", qnaNo);
		return deleteQnaBoard;
	}
	
	/*
	 * 게시물 조회수증가
	 * */
	public int boardQnainquiryUpdate(int qnaNo) throws Exception {
		int updateInquiry = sqlSession.update(NAMESPACE + "boardQnaInquiryUpdate", qnaNo);
		return updateInquiry;
	}
	
	
}
