package com.itwill.product;

import java.util.List;

public interface ProductService {

	
	
		//Create
		int insertProduct(Product product) throws Exception;
		
		//Read All
		List<Product> selectByAll() throws Exception;
			
		//READ ONE
		Product selectByOne(int productNo) throws Exception;
		
		//UPDATE
		int updateProduct(Product product) throws Exception;
		
		//DELETE
		int deleteProduct(int productNo) throws Exception;
		
		//카테고리 번호로 찾기(카테고리 별 분류)
		List<Product> selectByCategoryNo(int categoryNo) throws Exception;
		
		//카테고리 디테일 번호로 찾기(카테고리 상세 분류)
		List<Product> selectByCategoryDetailNo(int categoryDetailNo) throws Exception;
		
		//카테고리 별 판매량 순으로 정렬
		List<Product> orderByProductSalesQty(int categoryNo) throws Exception;
		
		//카테고리 별 저가순으로 정렬
		List<Product> orderByPriceAsc(int categoryNo) throws Exception;
		
		//카테고리 별 고가순으로 정렬
		List<Product> orderByPriceDesc(int categoryNo) throws Exception;
		
}
