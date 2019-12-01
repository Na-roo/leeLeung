package com.itwill.jumun.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.cart.Cart;
import com.itwill.cart.CartService;
import com.itwill.jumun.Jumun;
import com.itwill.jumun.JumunProduct;
import com.itwill.jumun.JumunProductService;
import com.itwill.jumun.JumunService;
import com.itwill.member.Member;
import com.itwill.product.Product;
import com.itwill.product.ProductService;




@Controller
public class JumunController {
	
	@Autowired
	private JumunService jumunService;
	
	@Autowired
	private JumunProductService jumunProductService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CartService cartService;
	
	
	////////////////////////////주문///////////////////////////////////////////
	
	@RequestMapping("/jumun_allList.do")
	public String jumun_allList(Model model,HttpServletRequest request) {
		
		String forwardPath = "";
		try {
			List<Jumun> jumunList = jumunService.selectByAll();
			model.addAttribute("jumunAllList", jumunList);
			forwardPath = "forward:/WEB-INF/view/jumun_AllList.jsp";
		} catch (Exception e) {
			forwardPath = "forward:/WEB-INF/view/error.jsp";
			e.printStackTrace();
		}
		return forwardPath;
		
	}
	
	@RequestMapping("/jumun_list.do")
	public String jumun_list(HttpSession session, Model model) {
		
		String forwardPath = "";
		try {
			Member member = (Member)session.getAttribute("sMember");
			
			List<Jumun> jumunList = jumunService.selectByMemberNo(member.getMemberNo());
			model.addAttribute("jumunList", jumunList);
			forwardPath = "forward:/WEB-INF/view/jumun_list.jsp";
		} catch (Exception e) {
			forwardPath = "forward:/WEB-INF/view/requestLogin_form.jsp";
			e.printStackTrace();
		}
		return forwardPath;
		
	}
	
	@RequestMapping("/jumun_insert_form2.do")
	public String jumun_insert_form2() {
		String forwardPath = "";
		forwardPath = "forward:/WEB-INF/view/jumun_insert_form2.jsp";
		return forwardPath;
	}
	
	// 주문 입력 페이지 (1)
	@RequestMapping("/jumun_insert_form.do")
	public String jumun_insert_form(@RequestParam("productNo") String[] productNo,
									@RequestParam("quantity") String[] quantity,
									HttpSession session,
									Model model) {
		String forwardPath = "";
		
		List<JumunProduct> jumunProductList = new ArrayList<JumunProduct>();
		List<Product> productList = new ArrayList<Product>();
		
		try {
			for (int i = 0; i < productNo.length; i++) {
				jumunProductList.add(new JumunProduct(Integer.parseInt(quantity[i]),Integer.parseInt(productNo[i])));
				
				Product product = productService.selectByOne(Integer.parseInt(productNo[i]));
				productList.add(product);
				
				
			}
			model.addAttribute("productList", productList);
			model.addAttribute("quantity", quantity);
			
			session.setAttribute("sproductList", productList);
			session.setAttribute("squantity", quantity);
			session.setAttribute("sjumunProductList", jumunProductList);
			session.setAttribute("sjumunSize", jumunProductList.size());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		forwardPath = "forward:/WEB-INF/view/jumun_insert_form.jsp";
	
		return forwardPath;
	}
	
	
	
	
	
	// 주문확인 페이지 (2)
	@RequestMapping("/jumun_check_form.do")
	public String jumun_check_form(@ModelAttribute Jumun jumun,HttpSession session, Model model) {
		String forwardPath = "";
		
		model.addAttribute("jumun", jumun);
		session.setAttribute("sjumun", jumun);
		
		forwardPath = "forward:/WEB-INF/view/jumun_check_form.jsp";
		return forwardPath;
	}
	
	@RequestMapping("/jumun_afterCheck_form.do")
	public String jumun_afterCheck_form(@RequestParam(value = "jumunNo") String jumunNo ,HttpSession session, Model model) {
		String forwardPath = "";
		
		try {
			Jumun jumun = jumunService.selectByOne(Integer.parseInt(jumunNo));
			
			List<JumunProduct> jumunProductList = jumunProductService.selectByJumunNo(jumun.getJumunNo());
			
			System.out.println("@@@@@@@@@@@@@@@@@@@@@@");
			System.out.println(jumunProductList);
			List<Product> productList = new ArrayList<Product>();
			
			for (int i = 0; i < jumunProductList.size(); i++) {
				Product product = productService.selectByOne(jumunProductList.get(i).getProductNo());
				productList.add(product);
				System.out.println("##########################");
				System.out.println(product);
			}
			
			model.addAttribute("jumun", jumun);
			model.addAttribute("jumunProductList", jumunProductList);
			model.addAttribute("productList", productList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		forwardPath = "forward:/WEB-INF/view/jumun_afterCheck_form.jsp";
		return forwardPath;
	}
	
	// 주문 저장 액션 (3)
	@RequestMapping(value = "/jumun_insert_action.do",method = RequestMethod.POST)
	public String jumun_insert_action(HttpSession session) {
		String forwardPath = "";
		
		Jumun jumun = (Jumun)session.getAttribute("sjumun");
		
		try {
			int insertOk = jumunService.insertJumun(jumun);
			if(insertOk == 1) {
				forwardPath = "redirect:jumunProduct_insert_action.do";
			} else {
				forwardPath = "forward:/WEB-INF/view/error.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/view/error.jsp";
		}
		return forwardPath;
	}
	
	@RequestMapping("/jumun_delete_action.do")
	public String jumun_delete_action(@RequestParam ("jumunNo") int jumunNo) {
		String forwardPath = "";
		try {
			int deleteOk = jumunService.deleteJumun(jumunNo);
			if(deleteOk == 1) {
				forwardPath = "redirect:jumun_list.do";
			} else {
				forwardPath = "forward:/WEB-INF/view/error.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/view/error.jsp";
		}
		return forwardPath;
	}
	
	
	
	/////////////////////////////주문 상품/////////////////////////////////////
	@RequestMapping("/jumunProduct_allList.do")
	public String jumunProduct_allList(Model model,HttpServletRequest request) {
		
		String forwardPath = "";
		try {
			List<JumunProduct> jumunProductList = jumunProductService.selectByAll();
			model.addAttribute("jumunProductList", jumunProductList);
			forwardPath = "forward:/WEB-INF/view/jumunProduct_allList.jsp";
		} catch (Exception e) {
			forwardPath = "forward:/WEB-INF/view/error.jsp";
			e.printStackTrace();
		}
		return forwardPath;
		
	}
	
	@RequestMapping("/jumunProduct_list.do")
	public String jumunProduct_list(@RequestParam(value = "jumunNo",required = false, defaultValue = "-1") String jumunNo, Model model) {
		
		String forwardPath = "";
		try {
			List<JumunProduct> jumunProductList = jumunProductService.selectByJumunNo(Integer.parseInt(jumunNo));
			model.addAttribute("jumunProductList", jumunProductList);
			forwardPath = "forward:/WEB-INF/view/jumunProduct_list.jsp";
		} catch (Exception e) {
			forwardPath = "forward:/WEB-INF/view/error.jsp";
			e.printStackTrace();
		}
		return forwardPath;
		
	}
	
	// 해당 주문 상품 저장 액션 (4)
	@RequestMapping("/jumunProduct_insert_action.do")
	public String jumunProduct_insert_action(HttpSession session) {
		String forwardPath = "";
		
		List<JumunProduct> jumunProductList = (List<JumunProduct>)session.getAttribute("sjumunProductList");
		
		try {
			int errorCount = 0;
			for (JumunProduct jumunProduct : jumunProductList) {
				int insertOk = jumunProductService.insertJumunProduct(jumunProduct);
				
				if(insertOk != 1) {
					errorCount = 1;
				}
				
				//주문 상품 판매량 재고량 수정
				int updateOk = jumunProductService.updateProductQty(jumunProduct);
				
			}
			
			session.removeAttribute("sproductList");
			session.removeAttribute("squantity");
			session.removeAttribute("sjumunProductList");
			session.removeAttribute("sjumun");
			session.removeAttribute("sjumunSize");
			
			Member member = (Member)session.getAttribute("sMember");
			
			int deleteOk = cartService.deleteCartList(member.getMemberNo());
			
			if (errorCount == 0) {
				forwardPath = "redirect:jumun_complete_form.do";
			}else {
				forwardPath = "forward:/WEB-INF/view/error.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/view/error.jsp";
		}
		return forwardPath;
	}
	
	// 주문 완료 페이지 (5)
	@RequestMapping("/jumun_complete_form.do")
	public String jumun_complete_form(Model model,HttpServletRequest request) {
		String forwardPath = "";
		
		try {
			int jumunNo = jumunService.selectJumunNo();
			model.addAttribute("jumunNo", jumunNo);
			
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/view/error.jsp";
		}
		
		forwardPath = "forward:/WEB-INF/view/jumun_complete_form.jsp";
		return forwardPath;
	}
	
	@RequestMapping("/jumun_complete_action.do")
	public String jumun_complete_action() {
		String forwardPath = "";
		
		forwardPath = "redirect:main.do";
		return forwardPath;
	}
	
}
