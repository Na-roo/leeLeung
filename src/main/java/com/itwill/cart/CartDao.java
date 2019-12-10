package com.itwill.cart;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public interface CartDao {


	List<Cart> selectCartList(int memberNo) throws Exception;

	int existProduct(int memberNo,int productNo) throws Exception;

	int insertCart(Cart cart) throws Exception;

	int updateCart(Cart cart) throws Exception;

	int deleteCartList(int memberNo) throws Exception;

	int deleteCartOne(Cart cart) throws Exception;

}