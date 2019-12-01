package com.itwill.jumun;

public class JumunProduct {
	
	private int jumunProductNo;
	private int jumunProductQty;
	private int jumunNo;
	private int productNo;
	private int optionNo;
	
	
	public JumunProduct() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public JumunProduct(int jumunProductQty, int productNo) {
		super();
		this.jumunProductQty = jumunProductQty;
		this.productNo = productNo;
	}



	public JumunProduct(int jumunProductNo, int jumunProductQty, int jumunNo, int productNo, int optionNo) {
		super();
		this.jumunProductNo = jumunProductNo;
		this.jumunProductQty = jumunProductQty;
		this.jumunNo = jumunNo;
		this.productNo = productNo;
		this.optionNo = optionNo;
	}

	// 주문상품번호(PK) 뺀 생성자
	public JumunProduct(int jumunProductQty, int jumunNo, int productNo, int optionNo) {
		super();
		this.jumunProductQty = jumunProductQty;
		this.jumunNo = jumunNo;
		this.productNo = productNo;
		this.optionNo = optionNo;
	}
	
	
	// 주문상품번호(PK) 주문번호(FK) 뺀 생성자
	public JumunProduct(int jumunProductQty, int productNo, int optionNo) {
		super();
		this.jumunProductQty = jumunProductQty;
		this.productNo = productNo;
		this.optionNo = optionNo;
	}

	@Override
	public String toString() {
		return "JumunProduct [jumunProductNo=" + jumunProductNo + ", jumunProductQty=" + jumunProductQty + ", jumunNo="
				+ jumunNo + ", ProductNo=" + productNo + ", optionNo=" + optionNo + "]";
	}



	public int getJumunProductNo() {
		return jumunProductNo;
	}



	public void setJumunProductNo(int jumunProductNo) {
		this.jumunProductNo = jumunProductNo;
	}



	public int getJumunProductQty() {
		return jumunProductQty;
	}



	public void setJumunProductQty(int jumunProductQty) {
		this.jumunProductQty = jumunProductQty;
	}



	public int getJumunNo() {
		return jumunNo;
	}



	public void setJumunNo(int jumunNo) {
		this.jumunNo = jumunNo;
	}



	public int getProductNo() {
		return productNo;
	}



	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}



	public int getOptionNo() {
		return optionNo;
	}



	public void setOptionNo(int optionNo) {
		this.optionNo = optionNo;
	}

	
	
}
