package com.itwill.board.boardNotice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("boardnoticeDao")
public class BoardNoticeDaoImpl implements BoardNoticeDao {
	public final static String NAMESPACE = "com.itwill.board.mapper.BoardMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	
	public BoardNoticeDaoImpl() throws Exception {
		System.out.println("1.### BoardNoticeDaoImpl()생성");
	}
	
	
	
	/* (non-Javadoc)
	 * @see com.itwill.boardnotice.BoardDao#setSqlSession(org.apache.ibatis.session.SqlSession)
	 */
	public void setSqlSession(SqlSession sqlSession) {
		System.out.println("2.### BoardNoticeDaoImpl: setSqlSession("+sqlSession+")메쏘드실행");
		this.sqlSession = sqlSession;
	}



	/* (non-Javadoc)
	 * @see com.itwill.boardnotice.BoardDao#boardNoticeList()
	 */
	//개시글 리스트뽑기
	@Override
	public List<BoardNotice> boardNoticeList(int startRowNum,int endRowNum, String searchOption , String keyword) throws Exception {
		HashMap paramMap=new HashMap();
		paramMap.put("startRowNum", startRowNum);
		paramMap.put("endRowNum", endRowNum);
		paramMap.put("searchOption", searchOption);
		paramMap.put("keyword", keyword);
		List<BoardNotice> BoardNoticeList = sqlSession.selectList(NAMESPACE+"boardNoticeList",paramMap);
		return BoardNoticeList;
	}

	/* (non-Javadoc)
	 * @see com.itwill.boardnotice.BoardDao#boardNoticeCount()
	 */
	
	//총게시글 갯수구하기
	@Override
	public int boardNoticeCount() throws Exception {

		int boardNoticeListCount = sqlSession.selectOne(NAMESPACE+"boardNoticeCount");
	
		return boardNoticeListCount;
	}

	
	
	
	/* (non-Javadoc)
	 * @see com.itwill.boardnotice.BoardDao#boardSelectByMemberId(java.lang.String)
	 */
	//게시글 아디로찾기
	@Override
	public BoardNotice boardNoticeSelectByMemberNo(int pageno) throws Exception {
		BoardNotice boardNotice = null;
		boardNotice=sqlSession.selectOne(NAMESPACE+"boardNoticeSelectByMemberNo",pageno);
		return boardNotice;
	}
	
	//게시글작성
	@Override
	public int boardNoticeInsert(BoardNotice boardNotice) throws Exception{
		
	int	isSuccess = sqlSession.insert(NAMESPACE+"boardNoticeInsert",boardNotice);
		
		return isSuccess;
	}
	
	//게시글 수정
	@Override
	public int boardNoticeUpdate(BoardNotice boardNotice) throws Exception {
		
		int updateQuery = sqlSession.update(NAMESPACE+"boardNoticeUpdate",boardNotice);
		
		return updateQuery;
		
	}
	
	//게시글 삭제
	@Override
	public int boardNoticedelete(int noticeno) throws Exception {
		
		int delete = sqlSession.delete(NAMESPACE+"boardNoticedelete",noticeno);
		
		return delete;
	}
	
	//조회수증가
	
	public int boardNoticenoticeinquiryUpdate (int noticeno) throws Exception{
		
		int updateQuery = sqlSession.update(NAMESPACE+"boardNoticenoticeinquiryUpdate",noticeno);
		
		return updateQuery;
	}
	
	
	///////////////////////////////////지금은 안쓰는것 (검색)/////////////////////////////////////////
	
	//  게시글 전체 목록 검색기능
	@Override
	public List<BoardNotice> listAll(String searchOption, String keyword) throws Exception {
	    // 검색옵션, 키워드 맵에 저장
	   HashMap map =  new HashMap();
	    map.put("searchOption", searchOption);
	    map.put("keyword", keyword);
	    return sqlSession.selectList(NAMESPACE+"listAll",map);
	}
	//  게시글 레코드 갯수 검색기능 검색후 몇개있습니다 뜨게하려고
	@Override
	public int countArticle(String searchOption, String keyword) throws Exception {
	    // 검색옵션, 키워드 맵에 저장
		HashMap map =  new HashMap();
	 
	    map.put("searchOption", searchOption);
	    map.put("keyword", keyword);
	    return sqlSession.selectOne(NAMESPACE+"countArticle",map);
	}
	
	
}
