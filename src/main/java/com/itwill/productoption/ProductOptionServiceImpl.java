package com.itwill.productoption;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("productOptionService")
public class ProductOptionServiceImpl implements ProductOptionService {
	@Autowired
	private ProductOptionDao productOptionDao;

	public ProductOptionServiceImpl() throws Exception {

	}

	public void setProductOptionDao(ProductOptionDao productOptionDao) {
		this.productOptionDao = productOptionDao;
	}

	
	
	
	@Override
	public List<ProductOption> selectByAll() throws Exception {
		return productOptionDao.selectByAll();
	}

	@Override
	public ProductOption selectByOne(int productOptionNo) throws Exception {
		return productOptionDao.selectByOne(productOptionNo);
	}
	
	@Override
	public int insertProductOption(ProductOption productOption) throws Exception {
		return productOptionDao.insertProductOption(productOption);
	}

	@Override
	public int updateProductOption(ProductOption productOption) throws Exception {
		return productOptionDao.updateProductOption(productOption);
	}

	@Override
	public int deleteProductOption(int productOptionNo) throws Exception {
		return productOptionDao.deleteProductOption(productOptionNo);
	}

	@Override
	public List<ProductOption> selectOptionList(int productNo) throws Exception {
		return productOptionDao.selectOptionList(productNo);
	}
}
