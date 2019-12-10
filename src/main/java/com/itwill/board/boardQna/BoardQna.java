package com.itwill.board.boardQna;

import java.sql.Date;

public class BoardQna {

	private int qnaNo; // 문의게시글 번호
	private String qnaWriter; // 문의게시글 작성자
	private String qnaTitle; // 문의게시글 제목
	private String qnaContent; // 문의게시글 내용
	private Date qnaDate; // 문의게시글 날짜
	private int qnaInquiry; // 문의게시글 조회수

	public BoardQna() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public BoardQna(int qnaNo, String qnaWriter, String qnaTitle, String qnaContent, Date qnaDate, int qnaInquiry) {
		super();
		this.qnaNo = qnaNo;
		this.qnaWriter = qnaWriter;
		this.qnaTitle = qnaTitle;
		this.qnaContent = qnaContent;
		this.qnaDate = qnaDate;
		this.qnaInquiry = qnaInquiry;
	}


	public int getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}

	public String getQnaWriter() {
		return qnaWriter;
	}

	public void setQnaWriter(String qnaWriter) {
		this.qnaWriter = qnaWriter;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaContent() {
		return qnaContent;
	}

	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}

	public Date getQnaDate() {
		return qnaDate;
	}

	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}

	public int getQnaInquiry() {
		return qnaInquiry;
	}

	public void setQnaInquiry(int qnaInquiry) {
		this.qnaInquiry = qnaInquiry;
	}

	@Override
	public String toString() {
		return "BoardQna [qnaNo=" + qnaNo + ", qnaWriter=" + qnaWriter + ", qnaTitle=" + qnaTitle + ", qnaContent="
				+ qnaContent + ", qnaDate=" + qnaDate + ", qnaInquiry=" + qnaInquiry + "]";
	}

}
