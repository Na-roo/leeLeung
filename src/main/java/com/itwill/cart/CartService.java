package com.itwill.cart;

import java.util.List;

public interface CartService {


	List<Cart> selectCartList(int memberNo) throws Exception;

	int existProduct(int memberNo,int productNo) throws Exception;

	int insertCart(Cart cart) throws Exception;

	int updateCart(Cart cart) throws Exception;

	int deleteCartList(int no) throws Exception;

	int deleteCartOne(Cart cart) throws Exception;

}