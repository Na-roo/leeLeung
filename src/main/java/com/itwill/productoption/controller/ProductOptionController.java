package com.itwill.productoption.controller;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.product.Product;
import com.itwill.productoption.ProductOption;
import com.itwill.productoption.ProductOptionService;

public class ProductOptionController {
	
	@Autowired
	private ProductOptionService productOptionService;
	
	
	@RequestMapping("/productOption_list.do")
	public String productoption_list(Model model) {
		String forwardPath="";
		try {
			List<ProductOption> productOptionList = productOptionService.selectByAll();
			model.addAttribute("productOptionList", productOptionList);
			forwardPath = "forward:/WEB-INF/view/productOption_list.jsp";
		} catch (Exception e) {
			forwardPath = "forward:/WEB-INF/view/productOption_error.jsp";
			e.printStackTrace();
		}
		return forwardPath;
	}
	
	
	@RequestMapping("/productOption_view.do")
	public String productOption_view(
			@RequestParam(value="productOptionNo", required=false, defaultValue="-999") 
			String productOptionNo, Map map){
		
		String forwardPath="";
		try {
			ProductOption productOption = productOptionService.selectByOne(Integer.parseInt(productOptionNo));
			if(productOption == null) {
				forwardPath = "redirect:productOption_list.do";
			} else {
				map.put("productOption", productOption);
				forwardPath = "forward:/WEB-INF/view/productOption_view.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath="forward:/WEB-INF/view/productOption_error.jsp";
		}
		return forwardPath;
	}
	
	@RequestMapping("/productOption_insert_form.do")
	public String productOption_insert_form() {
		String forwardPath = "";
		forwardPath = "forward:/WEB-INF/view/productOption_insert_form.jsp";
		return forwardPath;
	}
	
	
	
	
	@RequestMapping(value = "/productOption_insert_action.do", method = RequestMethod.POST)
	public String productOption_insert_action(@ModelAttribute ProductOption productOption) {
		String forwardPath = "";
		try {
			int insertOk = productOptionService.insertProductOption(productOption);
			if(insertOk == 1) {
				forwardPath = "redirect:productOption_list.do";
			} else {
				forwardPath = "forward:/WEB-INF/view/productOption_error.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/view/productOption_error.jsp";
		}
		return forwardPath;
	}
	
	
	
	
	
	
	
	@RequestMapping(value = "/productOption_update_form.do", method = RequestMethod.GET)
	public String productOption_update_form_get() {
		String forwardPath = "";
		forwardPath = "redirect:productOption_list.do";
		return forwardPath;
	}
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/productOption_update_form.do", method = RequestMethod.POST)
	public String productoption_update_form(@RequestParam("productOptionNo") String productOptionNo, ModelMap modelMap) {
		String forwardPath = "";
		try {
			ProductOption productOption = productOptionService.selectByOne(Integer.parseInt(productOptionNo));
			modelMap.addAttribute("productOption", productOption);
			forwardPath = "forward:/WEB-INF/view/productOption_update_form.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/view/productOption_error.jsp";
		}
		return forwardPath;
	}
	
	
	
	
	
	
	
	@RequestMapping(value = "/productOption_update_action.do", method = RequestMethod.POST)
	public String productOption_update_action(@ModelAttribute ProductOption productOption) {
		String forwardPath = "";
		try {
			int updateOk = productOptionService.updateProductOption(productOption);
			System.out.println(updateOk);
			if(updateOk == 1) {
				forwardPath = "forward:/WEB-INF/view/productOption_view.jsp";
			} else {
				forwardPath = "forward:/WEB-INF/view/productOption_error.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/view/productOption_error.jsp";
		}
		return forwardPath;
	}
	
	
	
	
	
	
	@RequestMapping(value = "/productOption_delete_action.do", method = RequestMethod.POST)
	public String productOption_delete_action(@RequestParam("productOptionNo") String productOptionNo) {
		String forwardPath = "";
		try {
			int deleteOk = productOptionService.deleteProductOption(Integer.parseInt(productOptionNo));
			if(deleteOk == 1) {
				forwardPath = "redirect:productOption_list.do";
			} else {
				forwardPath = "forward:/WEB-INF/view/productOption_error.jsp";
			}
		}catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/view/productOption_error.jsp";
		}
		return forwardPath;
	}
	@RequestMapping(value = "/product_view.do",method=RequestMethod.GET)
	public String product_category_list(@RequestParam("productNo") String productNo,Model model) {
		String forwardPath = "";
		try {
			List<ProductOption> productOptionList = productOptionService.selectOptionList(Integer.parseInt(productNo));
			model.addAttribute("productOptionList", productOptionList);
			forwardPath = "forward:/WEB-INF/view/product_view1.jsp";
		} catch (Exception e) {
			forwardPath = "forward:/WEB-INF/view/product_error.jsp";
			e.printStackTrace();
		}
		return forwardPath;
	}
	
	

}
