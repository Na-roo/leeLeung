package com.itwill.productoption;

import java.util.List;

public interface ProductOptionService {

	
	
		//Create
		int insertProductOption(ProductOption productOption) throws Exception;
		
		//Read All
		List<ProductOption> selectByAll() throws Exception;
			
		//READ ONE
		ProductOption selectByOne(int productOptionNo) throws Exception;
		
		//UPDATE
		int updateProductOption(ProductOption productOption) throws Exception;
		
		//DELETE
		int deleteProductOption(int productOptionNo) throws Exception;
		
		List<ProductOption> selectOptionList(int productNo) throws Exception;
		
}
