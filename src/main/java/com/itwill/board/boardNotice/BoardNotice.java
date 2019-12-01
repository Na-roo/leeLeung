package com.itwill.board.boardNotice;

import java.util.Date;

public class BoardNotice {
	private int noticeno;	//공지사항번호
	private String noticewriter;	//공지사항 작성자
	private String noticetitle;	//공지사항제목
	private String noticecontent;	//공지사항내용
	private Date noticedate;	//공지사항날짜
	private int noticeinquiry;	//공지사항조회수
	private int step; //스탭
	public int getNoticeno() {
		return noticeno;
	}
	public void setNoticeno(int noticeno) {
		this.noticeno = noticeno;
	}
	public String getNoticewriter() {
		return noticewriter;
	}
	public void setNoticewriter(String noticewriter) {
		this.noticewriter = noticewriter;
	}
	public String getNoticetitle() {
		return noticetitle;
	}
	public void setNoticetitle(String noticetitle) {
		this.noticetitle = noticetitle;
	}
	public String getNoticecontent() {
		return noticecontent;
	}
	public void setNoticecontent(String noticecontent) {
		this.noticecontent = noticecontent;
	}
	public Date getNoticedate() {
		return noticedate;
	}
	public void setNoticedate(Date noticedate) {
		this.noticedate = noticedate;
	}
	public int getNoticeinquiry() {
		return noticeinquiry;
	}
	public void setNoticeinquiry(int noticeinquiry) {
		this.noticeinquiry = noticeinquiry;
	}
	
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	@Override
	public String toString() {
		return "BoardNotice [noticeno=" + noticeno + ", noticewriter=" + noticewriter + ", noticetitle=" + noticetitle
				+ ", noticecontent=" + noticecontent + ", noticedate=" + noticedate + ", noticeinquiry=" + noticeinquiry
				+ "]";
	}
	
	
	
	
}
