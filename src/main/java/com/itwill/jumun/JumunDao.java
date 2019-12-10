package com.itwill.jumun;

import java.util.List;

public interface JumunDao {
	/*
	 * 주문 추가
	 */
	int insertJumun(Jumun jumun) throws Exception;
	
	/*
	 * 총 주문 리스트
	 */
	
	List<Jumun> selectByAll() throws Exception;
	
	/*
	 * 총 주문 가격
	 */
	
	int selectByAllPrice() throws Exception;
	
	/*
	 * 총 주문 건수
	 */
	
	int selectByAllCount() throws Exception;
	
	/*
	 * 회원번호로 회원 총 주문 가격
	 */
	
	int selectByOnePrice(int memberNo) throws Exception;
	
	/*
	 * 회원번호로 회원 총 주문 건수
	 */
	
	int selectByOneCount(int memberNo) throws Exception;

	/*
	 * 주문번호로 주문 하나찾기
	 */
	
	Jumun selectByOne(int no) throws Exception;

	/*
	 * 회원번호로 주문 찾기
	 */
	
	List<Jumun> selectByMemberNo(int no) throws Exception;
	
	/*
	 * 주문번호로 찾은 주문 수정
	 */
	
	int updateJumun(Jumun student) throws Exception;
	
	/*
	 * 주문번호로 주문 삭제
	 */
	
	int deleteJumun(int no) throws Exception;
	
	/*
	 * 주문완료페이지에서 주문번호 찾기
	 */
	
	int selectJumunNo() throws Exception;
}
