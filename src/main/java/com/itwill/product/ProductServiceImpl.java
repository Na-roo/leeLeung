package com.itwill.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("productService")
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao productDao;

	public ProductServiceImpl() throws Exception {
		// TODO Auto-generated constructor stub
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	//상품 전체 찾기
	@Override
	public List<Product> selectByAll() throws Exception {
		return productDao.selectByAll();
	}
	//상품번호로 상품 1개 찾기
	@Override
	public Product selectByOne(int productNo) throws Exception {
		return productDao.selectByOne(productNo);
	}
	//상품 등록
	@Override
	public int insertProduct(Product product) throws Exception {
		return productDao.insertProduct(product);
	}
	//상품 수정
	@Override
	public int updateProduct(Product product) throws Exception {
		return productDao.updateProduct(product);
	}
	//상품 삭제
	@Override
	public int deleteProduct(int productNo) throws Exception {
		return productDao.deleteProduct(productNo);
	}
	//카테고리 별 분류
	@Override
	public List<Product> selectByCategoryNo(int categoryNo) throws Exception {
		return productDao.selectByCategoryNo(categoryNo);
	}
	//카테고리 상세 별 분류
	@Override
	public List<Product> selectByCategoryDetailNo(int categoryDetailNo) throws Exception {
		return productDao.selectByCategoryDetailNo(categoryDetailNo);
	}
	//카테고리에 해당하는 상품을 판매량이 높은 순으로 정렬
	@Override
	public List<Product> orderByProductSalesQty(int categoryNo) throws Exception {
		return productDao.orderByProductSalesQty(categoryNo);
	}
	//카테고리에 해당하는 상품을 가격이 낮은 순으로 정렬
	@Override
	public List<Product> orderByPriceAsc(int categoryNo) throws Exception {
		return productDao.orderByPriceAsc(categoryNo);
	}
	//카테고리에 해당하는 상품을 가격이 높은 순으로 정렬
	@Override
	public List<Product> orderByPriceDesc(int categoryNo) throws Exception {
		return productDao.orderByPriceDesc(categoryNo);
	}
}
