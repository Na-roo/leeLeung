package com.itwill.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("cartService")
public class CartServiceImpl implements CartService{
	@Autowired
	private CartDao cartDao;
			

	public void setCartDao(CartDao cartDao) {
		this.cartDao = cartDao;
	}

	public CartServiceImpl() {
		
	}
	
	
	
	@Override
	public List<Cart> selectCartList(int memberNo) throws Exception {
		return cartDao.selectCartList(memberNo);
	}

	
	@Override
	public int existProduct(int memberNo,int productNo) throws Exception {
		return cartDao.existProduct(memberNo,productNo);
	}
	
	
	@Override
	public int insertCart(Cart cart) throws Exception {		 
		return cartDao.insertCart(cart);	
	}
	

	@Override
	public int updateCart(Cart cart) throws Exception {
		return cartDao.updateCart(cart);
	}


	@Override
	public int deleteCartList(int memberNo) throws Exception {		
		return cartDao.deleteCartList(memberNo);
	}


	@Override
	public int deleteCartOne(Cart cart) throws Exception {
		return cartDao.deleteCartOne(cart);
	}
	
	
}
