package com.itwill.board.boardQna;

import java.util.List;

public interface BoardQnaDao {

	/*
	 * 게시물 리스트 전체보기
	 * */
	public List<BoardQna> boardQnaList(int startRowNum,int endRowNum, String searchOption , String keyword) throws Exception;

	/*
	 * 게시물 리스트 갯수 알아내기
	 * */
	int boardQnaListCount() throws Exception;
	
	/*
	 * 게시물 리스트 검색기능
	 * */
	List<BoardQna> listAll(String searchOption, String keyword) throws Exception;
	
	/*
	 * 게시물 검색 후 갯수 알아내기
	 * */
	int countArticle(String searchOption, String keyword) throws Exception;
	
	/*
	 * 게시물 조회(번호)
	 * */
	BoardQna boardQnaSelectByQnaNo(int qnaNo) throws Exception;

	/*
	 * 게시물 작성하기
	 * */
	int insertBoardQna(BoardQna boardQna) throws Exception;

	/*
	 * 게시물 수정하기
	 * */
	int boardQnaUpdate(BoardQna boardQna) throws Exception;

	/*
	 * 게시물 삭제하기(번호)
	 * */
	int deleteBoardQna(int qnaNo) throws Exception;

	/*
	 * 게시물 조회수증가
	 * */
	int boardQnainquiryUpdate(int qnaNo) throws Exception;

}