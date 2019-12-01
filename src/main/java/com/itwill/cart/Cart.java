package com.itwill.cart;
/*
CARTNO	NUMBER(10,0)	No		1	카트번호
CARTQTY	NUMBER(10,0)	No		2	카트수량
MEMBERNO	NUMBER(10,0)	Yes		3	회원번호
PRODUCTNO	NUMBER(15,0)	Yes		4	상품번호
OPTIONNO	NUMBER(10,0)	Yes		5	옵션번호
 */
public class Cart {
	private int cartNo;
	private int cartQty;
	private int memberNo;
	private int productNo;
	private String productName;
	private String productImgA;
	private int productPrice;
	private int productOptionNo;
	
	public Cart() {
		
	}

	public Cart(int cartNo, int cartQty, int memberNo, int productNo, String productName, String productImgA,
			int productPrice, int productOptionNo) {
		super();
		this.cartNo = cartNo;
		this.cartQty = cartQty;
		this.memberNo = memberNo;
		this.productNo = productNo;
		this.productName = productName;
		this.productImgA = productImgA;
		this.productPrice = productPrice;
		this.productOptionNo = productOptionNo;
	}

	public int getCartNo() {
		return cartNo;
	}

	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}

	public int getCartQty() {
		return cartQty;
	}

	public void setCartQty(int cartQty) {
		this.cartQty = cartQty;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductImgA() {
		return productImgA;
	}

	public void setProductImgA(String productImgA) {
		this.productImgA = productImgA;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public int getProductOptionNo() {
		return productOptionNo;
	}

	public void setProductOptionNo(int productOptionNo) {
		this.productOptionNo = productOptionNo;
	}

	

	
	

	
	
	
	
	
	
	
}
