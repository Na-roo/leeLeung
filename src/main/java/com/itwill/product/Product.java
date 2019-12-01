package com.itwill.product;

public class Product {

	// PRODUCTNO NUMBER(15,0)
	// PRODUCTNAME VARCHAR2(25 BYTE)
	// PRODUCTPRICE NUMBER(12,0)
	// PRODUCTQTY NUMBER(5,0)
	// PRODUCTIMG VARCHAR2(300 BYTE)
	// PRODUCTSALESQTY NUMBER(10,0)
	// CATEGORYNO NUMBER(10,0)

	private int productNo;// 상품 번호
	private String productName;// 상품 이름
	private int productPrice;// 상품 가격
	private int productQty;// 상품 수량
	private int productSalesQty;// 상품 판매량
	private int categoryNo;// 카테고리 번호
	private int categoryDetailNo;// 카테고리 상세번호
	private String categoryName;//카테고리 이름
	private String productImgA;
	private String productImgB;
	private String productImgC;
	private String productImgD;
	private String productImgE;
	private String productImgF;
	private String productImgG;
	private String productImgH;
	private String productImgI;
	private String productImgJ;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(int productNo, String productName, int productPrice, int productQty, int productSalesQty,
			int categoryNo, int categoryDetailNo, String categoryName, String productImgA, String productImgB,
			String productImgC, String productImgD, String productImgE, String productImgF, String productImgG,
			String productImgH, String productImgI, String productImgJ) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productQty = productQty;
		this.productSalesQty = productSalesQty;
		this.categoryNo = categoryNo;
		this.categoryDetailNo = categoryDetailNo;
		this.categoryName = categoryName;
		this.productImgA = productImgA;
		this.productImgB = productImgB;
		this.productImgC = productImgC;
		this.productImgD = productImgD;
		this.productImgE = productImgE;
		this.productImgF = productImgF;
		this.productImgG = productImgG;
		this.productImgH = productImgH;
		this.productImgI = productImgI;
		this.productImgJ = productImgJ;
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
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public int getProductQty() {
		return productQty;
	}
	public void setProductQty(int productQty) {
		this.productQty = productQty;
	}
	public int getProductSalesQty() {
		return productSalesQty;
	}
	public void setProductSalesQty(int productSalesQty) {
		this.productSalesQty = productSalesQty;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public int getCategoryDetailNo() {
		return categoryDetailNo;
	}
	public void setCategoryDetailNo(int categoryDetailNo) {
		this.categoryDetailNo = categoryDetailNo;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getProductImgA() {
		return productImgA;
	}
	public void setProductImgA(String productImgA) {
		this.productImgA = productImgA;
	}
	public String getProductImgB() {
		return productImgB;
	}
	public void setProductImgB(String productImgB) {
		this.productImgB = productImgB;
	}
	public String getProductImgC() {
		return productImgC;
	}
	public void setProductImgC(String productImgC) {
		this.productImgC = productImgC;
	}
	public String getProductImgD() {
		return productImgD;
	}
	public void setProductImgD(String productImgD) {
		this.productImgD = productImgD;
	}
	public String getProductImgE() {
		return productImgE;
	}
	public void setProductImgE(String productImgE) {
		this.productImgE = productImgE;
	}
	public String getProductImgF() {
		return productImgF;
	}
	public void setProductImgF(String productImgF) {
		this.productImgF = productImgF;
	}
	public String getProductImgG() {
		return productImgG;
	}
	public void setProductImgG(String productImgG) {
		this.productImgG = productImgG;
	}
	public String getProductImgH() {
		return productImgH;
	}
	public void setProductImgH(String productImgH) {
		this.productImgH = productImgH;
	}
	public String getProductImgI() {
		return productImgI;
	}
	public void setProductImgI(String productImgI) {
		this.productImgI = productImgI;
	}
	public String getProductImgJ() {
		return productImgJ;
	}
	public void setProductImgJ(String productImgJ) {
		this.productImgJ = productImgJ;
	}
	
	
	
	
	
	
}