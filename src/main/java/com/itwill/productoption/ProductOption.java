package com.itwill.productoption;

public class ProductOption {

	private int productOptionNo;
	private String productOptionName;
	private int productOptionPrice;
	private int productNo;
	
	

	
	
	
	public ProductOption() {
		super();
		// TODO Auto-generated constructor stub
	}




	public ProductOption(int productOptionNo, String productOptionName, int productOptionPrice, int productNo) {
		super();
		this.productOptionNo = productOptionNo;
		this.productOptionName = productOptionName;
		this.productOptionPrice = productOptionPrice;
		this.productNo = productNo;
	}
	
	
	
	
	public int getProductOptionNo() {
		return productOptionNo;
	}
	public void setProductOptionNo(int productOptionNo) {
		this.productOptionNo = productOptionNo;
	}
	public String getProductOptionName() {
		return productOptionName;
	}
	public void setProductOptionName(String productOptionName) {
		this.productOptionName = productOptionName;
	}
	public int getProductOptionPrice() {
		return productOptionPrice;
	}
	public void setProductOptionPrice(int productOptionPrice) {
		this.productOptionPrice = productOptionPrice;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	

}
