package com.itwill.productoption;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("productOptionDao")
public class ProductOptionDaoImpl implements ProductOptionDao {
	public final static String NAMESPACE = "com.itwill.productOption.mapper.ProductOptionMapper.";
	@Autowired
	private SqlSession sqlSession;	
	
	public ProductOptionDaoImpl() throws Exception {
		// TODO Auto-generated constructor stub
	}
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public List<ProductOption> selectByAll() throws Exception {
		List<ProductOption> productOptionList = sqlSession.selectList(NAMESPACE + "selectByAll");
		return productOptionList;
	}

	@Override
	public ProductOption selectByOne(int productOptionNo) throws Exception {
		ProductOption productOption = sqlSession.selectOne(NAMESPACE+ "selectByOne", productOptionNo);
		return productOption;
	}
	
	@Override
	public int insertProductOption(ProductOption productOption) throws Exception {
		int insertOk = sqlSession.insert(NAMESPACE + "insertProductOption", productOption);
		return insertOk;
	}
	
	@Override
	public int updateProductOption(ProductOption productOption) throws Exception {
		int updateOk = sqlSession.update(NAMESPACE + "updateProductOption", productOption);
		return updateOk;
	}

	
	@Override
	public int deleteProductOption(int productOptionNo) throws Exception {
		int deleteOk = sqlSession.delete(NAMESPACE + "deleteProductoption", productOptionNo);
		return deleteOk;
	}
//상품번호로 옵션 리스트를 가져온다
	@Override
	public List<ProductOption> selectOptionList(int productNo) throws Exception {
		List<ProductOption> productOptionList = sqlSession.selectList(NAMESPACE + "selectOptionList", productNo);
		return productOptionList;
		
	}
	
}
