package com.itwill.product.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.product.Product;
import com.itwill.product.ProductService;
import com.itwill.productoption.ProductOption;
import com.itwill.productoption.ProductOptionService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	
	
	@RequestMapping("/product_list.do")
	public String product_list(Model model) {
		String forwardPath = "";
		try {
			List<Product> productList = productService.selectByAll();
			model.addAttribute("productList", productList);
			forwardPath = "forward:/WEB-INF/view/product_list.jsp";
		} catch (Exception e) {
			forwardPath = "forward:/WEB-INF/view/product_error.jsp";
			e.printStackTrace();
		}
		return forwardPath;
	}

	@RequestMapping("/product_view.do")
	public String product_view(
			@RequestParam(value = "productNo", required = false, defaultValue = "-999") String productNo, Map map) {
		String forwardPath = "";
		try {
			Product product = productService.selectByOne(Integer.parseInt(productNo));
			
			if (product == null) {
				forwardPath = "redirect:product_list.do";
			} else {
				map.put("product", product);
				
				forwardPath = "forward:/WEB-INF/view/product_view.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/view/product_error.jsp";
		}
		return forwardPath;
	}
	
	@RequestMapping(value = "/product_category_list.do",method=RequestMethod.GET)
	public String product_category_list(@RequestParam("categoryNo") String categoryNo,Model model) {
		String forwardPath = "";
		try {
			List<Product> productList = productService.selectByCategoryNo(Integer.parseInt(categoryNo));
			
			model.addAttribute("productList", productList);
			model.addAttribute("categoryNo",categoryNo);
			forwardPath = "forward:/WEB-INF/view/product_category_list.jsp";
		} catch (Exception e) {
			forwardPath = "forward:/WEB-INF/view/product_error.jsp";
			e.printStackTrace();
		}
		return forwardPath;
	}
	
	@RequestMapping("/product_category_detail_list.do")
	public String product_category_detail_list(@RequestParam("categoryDetailNo") String categoryDetailNo,Model model) {
		String forwardPath = "";
		try {
			List<Product> productList = productService.selectByCategoryDetailNo(Integer.parseInt(categoryDetailNo));
			model.addAttribute("productList", productList);
			forwardPath = "forward:/WEB-INF/view/product_category_detail_list.jsp";
		} catch (Exception e) {
			forwardPath = "forward:/WEB-INF/view/product_error.jsp";
			e.printStackTrace();
		}
		return forwardPath;
	}
	
	
	@RequestMapping("/product_insert_form.do")
	public String product_insert_form() {
		String forwardPath = "";
		forwardPath = "forward:/WEB-INF/view/product_insert_form.jsp";
		return forwardPath;
	}

	@RequestMapping(value = "/product_insert_action.do", method = RequestMethod.POST)
	public String product_insert_action(@ModelAttribute Product product) {
		String forwardPath = "";
		try {
			int insertOk = productService.insertProduct(product);
			if (insertOk == 1) {
				forwardPath = "redirect:product_list.do";
			} else {
				forwardPath = "forward:/WEB-INF/view/product_error.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/view/product_error.jsp";
		}
		return forwardPath;
	}

	@RequestMapping(value = "/product_update_form.do", method = RequestMethod.GET)
	public String product_update_form_get() {
		String forwardPath = "";
		forwardPath = "redirect:product_list.do";
		return forwardPath;
	}

	@RequestMapping(value = "/product_update_form.do", method = RequestMethod.POST)
	public String product_update_form(@RequestParam("productNo") String productNo, ModelMap modelMap) {
		String forwardPath = "";
		try {
			Product product = productService.selectByOne(Integer.parseInt(productNo));
			modelMap.addAttribute("product", product);
			forwardPath = "forward:/WEB-INF/view/product_update_form.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/view/product_error.jsp";
		}
		return forwardPath;
	}

	@RequestMapping(value = "/product_update_action.do", method = RequestMethod.POST)
	public String product_update_action(@ModelAttribute Product product) {
		String forwardPath = "";
		try {
			int updateOk = productService.updateProduct(product);
			System.out.println(updateOk);
			if (updateOk == 1) {
				forwardPath = "forward:/WEB-INF/view/product_view.jsp";
			} else {
				forwardPath = "forward:/WEB-INF/view/product_error.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/view/product_error.jsp";
		}
		return forwardPath;
	}

	@RequestMapping(value = "/product_delete_action.do", method = RequestMethod.POST)
	public String product_delete_action(@RequestParam("productNo") String productNo) {
		String forwardPath = "";
		try {
	
			int deleteOk = productService.deleteProduct(Integer.parseInt(productNo));
			if (deleteOk == 1) {
				forwardPath = "redirect:product_list.do";
			} else {
				forwardPath = "forward:/WEB-INF/view/product_error.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/view/product_error.jsp";
		}
		return forwardPath;
	}
	
	
	//해당 카테고리를 가격순으로 오름차순 정렬
	@RequestMapping(value="/product_order_asc.do", method=RequestMethod.GET)
	public String product_order_asc(@RequestParam("categoryNo") String categoryNo, Model model ) {
		String forwardPath="";
		try {
			List<Product> productList=productService.orderByPriceAsc(Integer.parseInt(categoryNo));
			
			model.addAttribute("productList", productList);
			model.addAttribute("categoryNo",categoryNo);
			forwardPath = "forward:/WEB-INF/view/product_category_list.jsp";

		} catch (Exception e) {
			e.printStackTrace();
			forwardPath="forward:/WEB-INF/view/product_error.jsp";

		}
		
		return forwardPath;
	}
	//해당 카테고리를 가격순으로 내림차순 정렬
	@RequestMapping(value="/product_order_desc.do", method=RequestMethod.GET)
	public String product_order_desc(@RequestParam("categoryNo") String categoryNo, Model model ) {
		String forwardPath="";
		try {
			List<Product> productList=productService.orderByPriceDesc(Integer.parseInt(categoryNo));
			model.addAttribute("productList", productList);
			model.addAttribute("categoryNo",categoryNo);
			forwardPath = "forward:/WEB-INF/view/product_category_list.jsp";
			
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath="forward:/WEB-INF/view/product_error.jsp";
			
		}
		
		return forwardPath;
	}
	//해당 카테고리를 인기순 정렬
	@RequestMapping(value="/product_order_popular.do", method=RequestMethod.GET)
	public String product_order_popular(@RequestParam("categoryNo") String categoryNo, Model model ) {
		String forwardPath="";
		try {
			List<Product> productList=productService.orderByProductSalesQty(Integer.parseInt(categoryNo));
			model.addAttribute("productList", productList);
			model.addAttribute("categoryNo",categoryNo);
			forwardPath = "forward:/WEB-INF/view/product_category_list.jsp";
			
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath="forward:/WEB-INF/view/product_error.jsp";
			
		}
		
		return forwardPath;
	}
	
	
	

}
