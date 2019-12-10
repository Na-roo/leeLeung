package com.itwill.board.boardReview;

import java.util.List;

public interface BoardReviewDao {
	
	// 게시글 전체목록
	List<BoardReview> selectByAll(int startPageNo, int endPageNo) throws Exception;
	
	// 총 게시글 수
	int boardReviewCount() throws Exception;
	
	// 게시글 상세보기
	BoardReview selectByOne(int reviewNo) throws Exception;
	
	// 게시글 작성
	int insertBoardReview(BoardReview boardReview) throws Exception;
	
	// 게시글 수정
	int updateBoardReview(BoardReview boardReview) throws Exception;
	
	// 게시글 삭제
	int deleteBoardReview(int reviewNo) throws Exception;
	
	// 게시글 조회수 증가
	void reviewViewCount(int reviewNo) throws Exception;
}
