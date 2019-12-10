package com.itwill.jumun;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("JumunProductDao")
public class JumunProductDaoImpl implements JumunProductDao{

	public JumunProductDaoImpl() {
		// TODO Auto-generated constructor stub
	}
	
	public final static String NAMESPACE = "com.itwill.jumun.mapper.JumunProductMapper.";
	@Autowired
	private SqlSession sqlSession;	
	
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	
	@Override
	public int insertJumunProduct(JumunProduct jumunProduct) throws Exception {
		int insertOk = sqlSession.insert(NAMESPACE + "insertJumunProduct", jumunProduct);
		return insertOk;
	}

	@Override
	public List<JumunProduct> selectByAll() throws Exception {
		List<JumunProduct> jumunProductList = sqlSession.selectList(NAMESPACE + "selectByAll");
		return jumunProductList;
	}
	
	

	@Override
	public List<JumunProduct> selectByJumunNo(int no) throws Exception {
		List<JumunProduct> jumunProductList = sqlSession.selectList(NAMESPACE + "selectByJumunNo", no);
		return jumunProductList;
	}



	@Override
	public JumunProduct selectByOne(int no) throws Exception {
		JumunProduct jumunProduct = sqlSession.selectOne(NAMESPACE + "selectByOne", no);
		return jumunProduct;
	}

	@Override
	public int updateJumunProduct(JumunProduct jumunProduct) throws Exception {
		int updateOk = sqlSession.update(NAMESPACE + "updateJumunProduct", jumunProduct);
		return updateOk;
	}

	@Override
	public int deleteJumunProduct(int no) throws Exception {
		int deleteOk = sqlSession.delete(NAMESPACE + "deleteJumunProduct", no);
		return deleteOk;
	}



	@Override
	public int updateProductQty(JumunProduct jumunProduct) throws Exception {
		int updateOk = sqlSession.update(NAMESPACE + "updateProductQty", jumunProduct);
		return updateOk;
	}

	
}
