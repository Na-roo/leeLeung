package com.itwill.jumun;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("JumunService")
public class JumunServiceImpl implements JumunService {
	@Autowired
	private JumunDao jumunDao;
	
	public JumunServiceImpl() throws Exception {
		// TODO Auto-generated constructor stub
	}
	
	public void setJumunDao(JumunDao jumunDao) {
		this.jumunDao = jumunDao;
	}
	
	/*
	 * 총 주문 리스트
	 */
	
	@Override
	public List<Jumun> selectByAll() throws Exception {
		return jumunDao.selectByAll();
	}

	/*
	 * 주문번호로 주문 하나찾기
	 */
	
	@Override
	public Jumun selectByOne(int no) throws Exception {
		return jumunDao.selectByOne(no);
	}
	
	/*
	 * 총 주문 가격
	 */
	
	@Override
	public int selectByAllPrice() throws Exception {
		return jumunDao.selectByAllPrice();
	}
	
	/*
	 * 총 주문 건수
	 */
	
	@Override
	public int selectByAllCount() throws Exception {
		return jumunDao.selectByAllCount();
	}
	
	/*
	 * 회원번호로 회원 총 주문 가격
	 */
	
	@Override
	public int selectByOnePrice(int memberNo) throws Exception {
		return jumunDao.selectByOnePrice(memberNo);
	}
	
	/*
	 * 회원번호로 회원 총 주문 건수
	 */
	
	@Override
	public int selectByOneCount(int memberNo) throws Exception {
		return jumunDao.selectByOnePrice(memberNo);
	}
	
	/*
	 * 회원번호로 주문 찾기
	 */
	
	@Override
	public List<Jumun> selectByMemberNo(int no) throws Exception {
		return jumunDao.selectByMemberNo(no);
	}
	
	/*
	 * 주문 추가
	 */
	
	@Override
	public int insertJumun(Jumun jumun) throws Exception {
		return jumunDao.insertJumun(jumun);
	}
	
	/*
	 * 주문번호로 찾은 주문 수정
	 */

	@Override
	public int updateJumun(Jumun jumun) throws Exception {
		return jumunDao.updateJumun(jumun);
	}
	
	/*
	 * 주문번호로 주문 삭제
	 */
	
	@Override
	public int deleteJumun(int no) throws Exception {
		return jumunDao.deleteJumun(no);
	}
	
	/*
	 * 주문완료페이지에서 주문번호 찾기
	 */

	@Override
	public int selectJumunNo() throws Exception {
		return jumunDao.selectJumunNo();
	}
	
}
