package com.itwill.jumun;

import java.util.Date;

public class Jumun {
	private int jumunNo; //주문번호
	private String productName;  // 주문이름
	private String productRec;  // 수취인 이름
	private String productRecPhone;  // 전화번호
	private String jumunRankDiscount;  // 할인금액
	private int jumunPrice;  // 주문금액
	private String jumunPay;  // 결제 수단
	private String postCode;  // 우편번호
	private String jumunAddress;  // 주소
	private String jumunAddress2;  // 상세주소
	private Date jumunDate;  // 주문날짜
	private int memberNo;  // 회원번호
	private String jumunEmail;  // 이메일주소
	private String jumunReq;  // 요청사항
	
	public Jumun() {
		// TODO Auto-generated constructor stub
	}

	public Jumun(int jumunNo, String productName,String productRec, String productRecPhone, String jumunRankDiscount, int jumunPrice,
			String jumunPay, String postCode, String jumunAddress,String jumunAddress2, Date jumunDate, int memberNo, String jumunEmail, String jumunReq) {
		super();
		this.jumunNo = jumunNo;
		this.productName = productName;
		this.productRec = productRec;
		this.productRecPhone = productRecPhone;
		this.jumunRankDiscount = jumunRankDiscount;
		this.jumunPrice = jumunPrice;
		this.jumunPay = jumunPay;
		this.postCode = postCode;
		this.jumunAddress = jumunAddress;
		this.jumunAddress2 = jumunAddress2;
		this.jumunDate = jumunDate;
		this.memberNo = memberNo;
		this.jumunEmail = jumunEmail;
		this.jumunReq = jumunReq;
	}
	
	

	public Jumun(String productName, String productRec, String productRecPhone, String jumunRankDiscount, int jumunPrice, String jumunPay,
			String postCode, String jumunAddress, String jumunAddress2, Date jumunDate, int memberNo, String jumunEmail, String jumunReq) {
		super();
		this.productName = productName;
		this.productRec = productRec;
		this.productRecPhone = productRecPhone;
		this.jumunRankDiscount = jumunRankDiscount;
		this.jumunPrice = jumunPrice;
		this.jumunPay = jumunPay;
		this.postCode = postCode;
		this.jumunAddress = jumunAddress;
		this.jumunAddress2 = jumunAddress2;
		this.jumunDate = jumunDate;
		this.memberNo = memberNo;
		this.jumunEmail = jumunEmail;
		this.jumunReq = jumunReq;
	}
	
	

	public Jumun(String productName, String productRec, String productRecPhone, String jumunRankDiscount, int jumunPrice, String jumunPay,
			String postCode, String jumunAddress, String jumunAddress2, int memberNo, String jumunEmail, String jumunReq) {
		super();
		this.productName = productName;
		this.productRec = productRec;
		this.productRecPhone = productRecPhone;
		this.jumunRankDiscount = jumunRankDiscount;
		this.jumunPrice = jumunPrice;
		this.jumunPay = jumunPay;
		this.postCode = postCode;
		this.jumunAddress = jumunAddress;
		this.jumunAddress2 = jumunAddress2;
		this.memberNo = memberNo;
		this.jumunEmail = jumunEmail;
		this.jumunReq = jumunReq;
	}

	public int getJumunNo() {
		return jumunNo;
	}

	public void setJumunNo(int jumunNo) {
		this.jumunNo = jumunNo;
	}

	public String getProductRec() {
		return productRec;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public void setProductRec(String productRec) {
		this.productRec = productRec;
	}

	public String getProductRecPhone() {
		return productRecPhone;
	}

	public void setProductRecPhone(String productRecPhone) {
		this.productRecPhone = productRecPhone;
	}

	public String getJumunRankDiscount() {
		return jumunRankDiscount;
	}

	public void setJumunRankDiscount(String jumunRankDiscount) {
		this.jumunRankDiscount = jumunRankDiscount;
	}

	public int getJumunPrice() {
		return jumunPrice;
	}

	public void setJumunPrice(int jumunPrice) {
		this.jumunPrice = jumunPrice;
	}

	public String getJumunPay() {
		return jumunPay;
	}

	public void setJumunPay(String jumunPay) {
		this.jumunPay = jumunPay;
	}

	public String getJumunAddress() {
		return jumunAddress;
	}

	public void setJumunAddress(String jumunAddress) {
		this.jumunAddress = jumunAddress;
	}

	public Date getJumunDate() {
		return jumunDate;
	}

	public void setJumunDate(Date jumunDate) {
		this.jumunDate = jumunDate;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getJumunAddress2() {
		return jumunAddress2;
	}

	public void setJumunAddress2(String jumunAddress2) {
		this.jumunAddress2 = jumunAddress2;
	}

	
	
	public String getJumunEmail() {
		return jumunEmail;
	}

	public void setJumunEmail(String jumunEmail) {
		this.jumunEmail = jumunEmail;
	}

	public String getJumunReq() {
		return jumunReq;
	}

	public void setJumunReq(String jumunReq) {
		this.jumunReq = jumunReq;
	}

	@Override
	public String toString() {
		return "Jumun [jumunNo=" + jumunNo + ", productName=" + productName + ", productRec=" + productRec
				+ ", productRecPhone=" + productRecPhone + ", jumunRankDiscount=" + jumunRankDiscount + ", jumunPrice="
				+ jumunPrice + ", jumunPay=" + jumunPay + ", postCode=" + postCode + ", jumunAddress=" + jumunAddress
				+ ", jumunAddress2=" + jumunAddress2 + ", jumunDate=" + jumunDate + ", memberNo=" + memberNo
				+ ", jumunEmail=" + jumunEmail + ", jumunReq=" + jumunReq + "]";
	}

	

	
	
	
}
