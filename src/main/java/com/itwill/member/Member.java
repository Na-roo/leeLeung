package com.itwill.member;

import java.util.Date;

public class Member {
	private int memberNo;
	private String memberId;
	private String memberPassword;
	private String memberName;
	private String memberPhone;
	private String memberEmail;
	private String postCode;
	private String memberAddress;
	private String memberAddress2;
	private String memberRank;
	private int memberMileage;
	private Date memberDate;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}
	
	public Member(String memberId, String memberPassword) {
		super();
		this.memberId = memberId;
		this.memberPassword = memberPassword;
	}

	public Member(int memberNo, String memberId, String memberPassword, String memberName,
			String memberPhone, String memberEmail, String postCode, String memberAddress, String memberAddress2,
			String memberRank, int memberMileage, Date memberDate) {
		super();
		this.memberNo = memberNo;
		this.memberId = memberId;
		this.memberPassword = memberPassword;
		this.memberName = memberName;
		this.memberPhone = memberPhone;
		this.memberEmail = memberEmail;
		this.postCode = postCode;
		this.memberAddress = memberAddress;
		this.memberAddress2 = memberAddress2;
		this.memberRank = memberRank;
		this.memberMileage = memberMileage;
		this.memberDate = memberDate;
	}

	public Member(int memberNo, String memberId, String memberPassword, String memberName, String memberSex,
			String memberPhone, String memberEmail, String memberAddress) {
		
		this.memberNo = memberNo;
		this.memberId = memberId;
		this.memberPassword = memberPassword;
		this.memberName = memberName;
		this.memberPhone = memberPhone;
		this.memberEmail = memberEmail;
		this.memberAddress = memberAddress;
	}
	
	public Member(String memberId, String memberPassword, String memberName, String memberSex, String memberPhone,
			String memberEmail, String memberAddress) {
		super();
		this.memberId = memberId;
		this.memberPassword = memberPassword;
		this.memberName = memberName;
		this.memberPhone = memberPhone;
		this.memberEmail = memberEmail;
		this.memberAddress = memberAddress;
	}
	

	public int getMemberNo() {
		return memberNo;
	}



	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}



	public String getMemberId() {
		return memberId;
	}



	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}



	public String getMemberPassword() {
		return memberPassword;
	}



	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}



	public String getMemberName() {
		return memberName;
	}



	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberPhone() {
		return memberPhone;
	}



	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}



	public String getMemberEmail() {
		return memberEmail;
	}



	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}



	public String getPostCode() {
		return postCode;
	}



	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}



	public String getMemberAddress() {
		return memberAddress;
	}



	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}



	public String getMemberAddress2() {
		return memberAddress2;
	}



	public void setMemberAddress2(String memberAddress2) {
		this.memberAddress2 = memberAddress2;
	}



	public String getMemberRank() {
		return memberRank;
	}



	public void setMemberRank(String memberRank) {
		this.memberRank = memberRank;
	}



	public int getMemberMileage() {
		return memberMileage;
	}



	public void setMemberMileage(int memberMileage) {
		this.memberMileage = memberMileage;
	}



	public Date getMemberDate() {
		return memberDate;
	}



	public void setMemberDate(Date memberDate) {
		this.memberDate = memberDate;
	}


	
	
}
