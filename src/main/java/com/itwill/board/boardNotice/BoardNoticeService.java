package com.itwill.board.boardNotice;

import java.util.List;

public interface BoardNoticeService {



	BoardNotice boardNoticeSelectByMemberNo(int pageno) throws Exception;
	
	int boardNoticeInsert(BoardNotice boardNotice) throws Exception;

	int boardNoticeUpdate(BoardNotice boardNotice) throws Exception;


	int boardNoticedelete(int noticeno) throws Exception;
	
	int boardNoticenoticeinquiryUpdate(int noticeno) throws Exception;

	List<BoardNotice> listAll(String searchOption, String keyword) throws Exception;

	int countArticle(String searchOption, String keyword) throws Exception;

	PageMakerOutput boardNoticeCount(PageMakerInput pageMakerInput, String searchOption, String keyWord)
			throws Exception;


	List<BoardNotice> boardNoticeList(int startPageNo, int endPageNo, String searchOption, String keyWord)
			throws Exception;

}
