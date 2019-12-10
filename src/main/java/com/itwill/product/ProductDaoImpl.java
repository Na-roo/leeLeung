package com.itwill.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("productDao")
public class ProductDaoImpl implements ProductDao {
	public final static String NAMESPACE = "com.itwill.product.mapper.ProductMapper.";
	@Autowired
	private SqlSession sqlSession;	
	
	public ProductDaoImpl() throws Exception {
		// TODO Auto-generated constructor stub
	}
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	
	//상품 전체 찾기
	@Override
	public List<Product> selectByAll() throws Exception {
		List<Product> productList = sqlSession.selectList(NAMESPACE + "selectByAll");
		return productList;
	}

	
	//상품번호로 상품 1개 찾기
	@Override
	public Product selectByOne(int productNo) throws Exception {
		Product product = sqlSession.selectOne(NAMESPACE+ "selectByOne", productNo);
		return product;
	}
	
	//상품 등록
	@Override
	public int insertProduct(Product product) throws Exception {
		int insertOk = sqlSession.insert(NAMESPACE + "insertProduct", product);
		return insertOk;
	}
	
	//상품 수정
	@Override
	public int updateProduct(Product product) throws Exception {
		int updateOk = sqlSession.update(NAMESPACE + "updateProduct", product);
		return updateOk;
	}

	//상품 삭제
	@Override
	public int deleteProduct(int productNo) throws Exception {
		int deleteOk = sqlSession.delete(NAMESPACE + "deleteProduct", productNo);
		return deleteOk;
	}

	
	//카테고리 별 분류
	@Override
	public List<Product> selectByCategoryNo(int categoryNo) throws Exception {
		List<Product> productList = sqlSession.selectList(NAMESPACE + "selectByCategoryNo",categoryNo);
		return productList;
	}

	
	//카테고리 상세 별 분류
	@Override
	public List<Product> selectByCategoryDetailNo(int categoryDetailNo) throws Exception {
		List<Product> productList = sqlSession.selectList(NAMESPACE + "selectByCategoryDetailNo",categoryDetailNo);
		return productList;
	}

	
	//카테고리에 해당하는 상품을 판매량이 높은 순으로 정렬
	@Override
	public List<Product> orderByProductSalesQty(int categoryNo) throws Exception {
		List<Product> productList = sqlSession.selectList(NAMESPACE + "orderByProductSalesQty",categoryNo);
		return productList;
	}

	//카테고리에 해당하는 상품을 가격이 낮은 순으로 정렬
	@Override
	public List<Product> orderByPriceAsc(int categoryNo) throws Exception {
		List<Product> productList = sqlSession.selectList(NAMESPACE + "orderByPriceAsc",categoryNo);
		return productList;
	}

	//카테고리에 해당하는 상품을 가격이 높은 순으로 정렬
	@Override
	public List<Product> orderByPriceDesc(int categoryNo) throws Exception {
		List<Product> productList = sqlSession.selectList(NAMESPACE + "orderByPriceDesc",categoryNo);
		return productList;
	}
	
}
