package com.itwill.board.boardNotice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("boardnoticeService")
public class BoardNoticeServiceImpl implements BoardNoticeService {

	@Autowired
	private BoardNoticeDao boardNoticeDao;

	public BoardNoticeServiceImpl() throws Exception {
		// TODO Auto-generated constructor stub
	}

	public void setBoardNoticeDao(BoardNoticeDao boardNoticeDao) {
		this.boardNoticeDao = boardNoticeDao;
	}

	@Override
	public List<BoardNotice> boardNoticeList(int startPageNo, int endPageNo,  String searchOption, String keyword) throws Exception {
		List<BoardNotice> boardList = boardNoticeDao.boardNoticeList(1, 10, searchOption, keyword);

		return boardList;
		
	}

	@Override
	public PageMakerOutput boardNoticeCount(PageMakerInput pageMakerInput,  String searchOption, String keyword) throws Exception {
		int totalNoticeListCount = boardNoticeDao.boardNoticeCount();
		// ListResultBean 클래스-->결과데이타 DTO,VO(Board ArrayList + Paging)

		PageMakerOutput pageMakerOutput = PageMakerCalculator.serviceGetPageing(
														Integer.parseInt(pageMakerInput.getSelectPage()), 
														pageMakerInput.getRowCountPerPage(),
														pageMakerInput.getPageCountPerPage(),
														totalNoticeListCount);
		List<BoardNotice> boardList = boardNoticeDao.boardNoticeList(pageMakerOutput.getStartRowNum(),
				pageMakerOutput.getEndRowNum(), searchOption, keyword);

		pageMakerOutput.setList(boardList);
		return pageMakerOutput;
	}


	@Override
	public BoardNotice boardNoticeSelectByMemberNo(int pageno) throws Exception {

		return boardNoticeDao.boardNoticeSelectByMemberNo(pageno);
	}

	@Override
	public int boardNoticeInsert(BoardNotice boardNotice) throws Exception {

		return boardNoticeDao.boardNoticeInsert(boardNotice);
	}

	@Override
	public int boardNoticeUpdate(BoardNotice boardNotice) throws Exception {

		return boardNoticeDao.boardNoticeUpdate(boardNotice);
	}

	@Override
	public int boardNoticedelete(int noticeno) throws Exception {

		return boardNoticeDao.boardNoticedelete(noticeno);
	}

	@Override
	public int boardNoticenoticeinquiryUpdate(int noticeno) throws Exception {

		return boardNoticeDao.boardNoticenoticeinquiryUpdate(noticeno);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	///////////////////////////////////지금은 안쓰는것 (검색)/////////////////////////////////////////

	// 게시글 전체 목록 boardDAO.listAll메서드 호출
	@Override
	public List<BoardNotice> listAll(String searchOption, String keyword) throws Exception {
		return boardNoticeDao.listAll(searchOption, keyword);
	}

	// 게시글 레코드 갯수 boardDao.countArticle메서드
	@Override
	public int countArticle(String searchOption, String keyword) throws Exception {
		return boardNoticeDao.countArticle(searchOption, keyword);
	}

}
