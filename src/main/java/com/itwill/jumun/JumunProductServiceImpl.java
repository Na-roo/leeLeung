package com.itwill.jumun;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("jumunProductService")
public class JumunProductServiceImpl implements JumunProductService {
	@Autowired
	private JumunProductDao jumunProductDao;
	
	
	public JumunProductServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	
	public void setJumunProductDao(JumunProductDao jumunProductDao) {
		this.jumunProductDao = jumunProductDao;
	}

	
	
	@Override
	public int insertJumunProduct(JumunProduct jumunProduct) throws Exception {
		return jumunProductDao.insertJumunProduct(jumunProduct);
	}

	@Override
	public List<JumunProduct> selectByAll() throws Exception {
		return jumunProductDao.selectByAll();
	}

	@Override
	public List<JumunProduct> selectByJumunNo(int no) throws Exception {
		return jumunProductDao.selectByJumunNo(no);
	}

	@Override
	public JumunProduct selectByOne(int no) throws Exception {
		return jumunProductDao.selectByOne(no);
	}

	@Override
	public int updateJumunProduct(JumunProduct jumunProduct) throws Exception {
		return jumunProductDao.updateJumunProduct(jumunProduct);
	}

	@Override
	public int deleteJumunProduct(int no) throws Exception {
		return jumunProductDao.deleteJumunProduct(no);
	}

	@Override
	public int updateProductQty(JumunProduct jumunProduct) throws Exception {
		return jumunProductDao.updateProductQty(jumunProduct);
	}
	
	
	
	
}
