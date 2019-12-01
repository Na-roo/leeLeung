package com.itwill.board.boardNotice;

import java.util.List;

public interface BoardNoticeDao {



	List<BoardNotice> boardNoticeList(int startRowNum, int endRowNum, String searchOption, String keyword)
			throws Exception;

	int boardNoticeCount() throws Exception;

	BoardNotice boardNoticeSelectByMemberNo(int pageno) throws Exception;

	int boardNoticeInsert(BoardNotice boardNotice) throws Exception;

	int boardNoticeUpdate(BoardNotice boardNotice) throws Exception;
	

	int boardNoticedelete(int noticeno) throws Exception;
	
	int boardNoticenoticeinquiryUpdate(int noticeno) throws Exception;

	List<BoardNotice> listAll(String searchOption, String keyword) throws Exception;


	int countArticle(String searchOption, String keyword) throws Exception;
	
	

}