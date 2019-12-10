package com.itwill.board.boardReview;

import java.io.File;
import java.util.Date;

public class BoardReview {
	private int reviewNo;
	private String reviewWriter;
	private String reviewTitle;
	private String reviewContent;
	private Date reviewDate;
	private int reviewViewCount;
	private String reviewGrade;
	private int step;
	private int productNo;
	private int memberNo;
	private File file;
	
	public BoardReview() {
		// TODO Auto-generated constructor stub
	}

	public BoardReview(int reviewNo, String reviewWriter, String reviewTitle, String reviewContent, Date reviewDate,
			int reviewViewCount, String reviewGrade, int productNo, int memberNo) {
		super();
		this.reviewNo = reviewNo;
		this.reviewWriter = reviewWriter;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
		this.reviewViewCount = reviewViewCount;
		this.reviewGrade = reviewGrade;
		this.productNo = productNo;
		this.memberNo = memberNo;
	}
	
	public BoardReview(File file) {
		super();
		this.file = file;
	}
	
	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getReviewWriter() {
		return reviewWriter;
	}

	public void setReviewWriter(String reviewWriter) {
		this.reviewWriter = reviewWriter;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public Date getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}

	public int getReviewViewCount() {
		return reviewViewCount;
	}

	public void setReviewViewCount(int reviewViewCount) {
		this.reviewViewCount = reviewViewCount;
	}

	public String getReviewGrade() {
		return reviewGrade;
	}

	public void setReviewGrade(String reviewGrade) {
		this.reviewGrade = reviewGrade;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	
	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	@Override
	public String toString() {
		return "BoardReview [reviewNo=" + reviewNo + ", reviewWriter=" + reviewWriter + ", reviewTitle=" + reviewTitle
				+ ", reviewContent=" + reviewContent + ", reviewDate=" + reviewDate + ", reviewViewCount="
				+ reviewViewCount + ", reviewGrade=" + reviewGrade + ", productNo=" + productNo + ", memberNo="
				+ memberNo + "]";
	}
	
	

	
	
	
}
