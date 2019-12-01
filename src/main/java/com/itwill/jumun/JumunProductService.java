package com.itwill.jumun;

import java.util.List;

public interface JumunProductService {
	
	/*
	 * CREATE
	 */
	int insertJumunProduct(JumunProduct jumunProduct) throws Exception;
	
	/*
	 * READ ALL
	 */
	List<JumunProduct> selectByAll() throws Exception;
	
	/*
	 * READ BY JUMUNNO
	 */
	List<JumunProduct> selectByJumunNo(int no) throws Exception;
	
	
	/*
	 * READ ONE
	 */
	JumunProduct selectByOne(int no) throws Exception;
	
	/*
	 * UPDATE
	 */
	int updateJumunProduct(JumunProduct jumunProduct) throws Exception;
	
	/*
	 * DELETE
	 */
	int deleteJumunProduct(int no) throws Exception;
	
	/*
	 *  주문완료시 상품 재고량, 판매량 수정
	 */
	int updateProductQty (JumunProduct jumunProduct) throws Exception;
}
