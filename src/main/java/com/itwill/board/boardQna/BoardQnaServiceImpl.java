package com.itwill.board.boardQna;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.board.boardQna.PageMakerCalculator;
import com.itwill.board.boardQna.PageMakerInput;
import com.itwill.board.boardQna.PageMakerOutput;
import com.itwill.board.boardQna.BoardQna;
import com.itwill.board.boardQna.BoardQnaDao;

@Service("boardQnaService")
public class BoardQnaServiceImpl implements BoardQnaService {
	
	@Autowired
	private BoardQnaDao boardQnaDao;

	public BoardQnaServiceImpl() throws Exception {
		// TODO Auto-generated constructor stub
	}


	@Override
	public void setBoardQnaDao(BoardQnaDao boardQnaDao) {
		this.boardQnaDao = boardQnaDao;
	}
	
	/*
	 * 게시물 리스트 전체보기
	 * */
	@Override
	public List<BoardQna> boardQnaList(int startPageNo,int endPageNo, String searchOption, String keyword) throws Exception {
		List<BoardQna> boardList = boardQnaDao.boardQnaList(1, 10, searchOption, keyword);
		
		return boardList;
	}
	
	/*
	 * 게시물 리스트 갯수 알아내기
	 * */
	@Override
	public PageMakerOutput boardQnaCount(PageMakerInput pageMakerInput, String searchOption, String keyword)throws Exception {
		int totalQnaListCount= boardQnaDao.boardQnaListCount();
		
		PageMakerOutput pageMakerOutput = 
				PageMakerCalculator.serviceGetPageing(Integer.parseInt(pageMakerInput.getSelectPage()),
														pageMakerInput.getRowCountPerPage(),
														pageMakerInput.getPageCountPerPage(),
														totalQnaListCount);
				
		List<BoardQna> boardList = boardQnaDao.boardQnaList(pageMakerOutput.getStartRowNum(),pageMakerOutput.getEndRowNum(), searchOption, keyword);							
		
		pageMakerOutput.setList(boardList);
		return pageMakerOutput;
	}
	
	/*
	 * 게시물 리스트 검색기능
	 * */
	@Override
	public List<BoardQna> listAll(String searchOption, String keyword) throws Exception {
		return boardQnaDao.listAll(searchOption, keyword);
	}
	
	/*
	 * 게시물 검색 후 갯수 알아내기
	 * */
	@Override
	public int countArticle(String searchOption, String keyword) throws Exception {
		return boardQnaDao.countArticle(searchOption, keyword);
	}
	
	
	
	
	/*
	 * 게시물 조회(번호)
	 * */
	@Override
	public BoardQna boardQnaSelectByQnaNo(int qnaNo) throws Exception {
		return boardQnaDao.boardQnaSelectByQnaNo(qnaNo);
	}
	
	/*
	 * 게시물 작성하기
	 * */
	@Override
	public int insertBoardQna(BoardQna boardQna) throws Exception {
		return boardQnaDao.insertBoardQna(boardQna);
	}
	
	/*
	 * 게시물 수정하기
	 * */
	@Override
	public int boardQnaUpdate(BoardQna boardQna) throws Exception {
		return boardQnaDao.boardQnaUpdate(boardQna);
	}
	
	
	/*
	 * 게시물 삭제하기(번호)
	 * */
	@Override
	public int deleteBoardQna(int qnaNo) throws Exception {
		return boardQnaDao.deleteBoardQna(qnaNo);
	}
	
	/*
	 * 게시물 조회수증가
	 * */
	public int boardQnainquiryUpdate(int qnaNo) throws Exception {
		return boardQnaDao.boardQnainquiryUpdate(qnaNo);
	}
	

}
