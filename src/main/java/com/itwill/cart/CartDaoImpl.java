package com.itwill.cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("cartDao")
public class CartDaoImpl implements CartDao {
	public final static String NAMESPACE = "com.itwill.cart.mapper.CartMapper.";
	@Autowired
	private SqlSession sqlSession;
	
	public CartDaoImpl() {
		
	}

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	@Override
	public List<Cart> selectCartList(int memberNo) throws Exception {
		List<Cart> cartList = sqlSession.selectList(NAMESPACE + "cartList",memberNo);
		return cartList;
	}

	
	@Override
	public int existProduct(int memberNo,int productNo) throws Exception {
		Map map = new HashMap();
		map.put("memberNo", memberNo);
		map.put("productNo", productNo);			
		return sqlSession.selectOne(NAMESPACE+ "existProduct", map);
	}
	
	
	@Override
	public int insertCart(Cart cart) throws Exception {
		int insertOk = sqlSession.insert(NAMESPACE + "insertCart", cart);
		return insertOk;
	}
	
	
	@Override
	public int updateCart(Cart cart) throws Exception {
		int updateOk = sqlSession.update(NAMESPACE + "updateCart", cart);
		return updateOk;
	}

	
	
	@Override
	public int deleteCartList(int memberNo) throws Exception {
		int deleteOk = sqlSession.delete(NAMESPACE + "deleteCartList", memberNo);
		return deleteOk;
	}

	
	@Override
	public int deleteCartOne(Cart cart) throws Exception {
		int deleteOk = sqlSession.delete(NAMESPACE + "deleteCartOne", cart);
		return deleteOk;
	}
	
	
	
	
}
