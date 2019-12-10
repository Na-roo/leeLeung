package com.itwill.cart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.cart.Cart;
import com.itwill.cart.CartService;
import com.itwill.member.Member;
import com.itwill.product.ProductService;


@Controller
public class CartController {
	@Autowired
	private CartService cartService;

	
	@RequestMapping("/cartList.do")
	public String cartList(Model model,HttpSession session) {
		String forwardPath="";
		try {
			Member member = (Member)session.getAttribute("sMember");
			List<Cart> cartList = cartService.selectCartList(member.getMemberNo());
			model.addAttribute("count",cartList.size());
			model.addAttribute("cartList", cartList);
			forwardPath = "forward:/WEB-INF/view/cart_list.jsp";
		} catch (Exception e) {
			forwardPath = "forward:/WEB-INF/view/requestLogin_form.jsp";
			e.printStackTrace();
		}
		return forwardPath;
				
	}
	@RequestMapping("/insertCart.do")
	public String insertCart(@ModelAttribute Cart cart,HttpSession session,HttpServletRequest request) {
		String forwardPath="";
		Member member = (Member)session.getAttribute("sMember");
		String cartQty = (String)request.getParameter("quantity");
		String productNo = (String)request.getParameter("productNo");
		cart.setMemberNo(member.getMemberNo());	
		cart.setCartQty(Integer.parseInt(cartQty));
		cart.setProductNo(Integer.parseInt(productNo));
		try {
			int count = cartService.existProduct(cart.getMemberNo(),Integer.parseInt(productNo));
			if(count == 0) {
				int insertOk = cartService.insertCart(cart);
				forwardPath = "redirect:product_view.do?productNo="+productNo;
			}else {
				cartService.updateCart(cart);
				forwardPath = "redirect:product_view.do?productNo="+productNo;
			}
						
		} catch(Exception e) {
			forwardPath = "forward:/WEB-INF/view/error.jsp";
			e.printStackTrace();
		}
		return forwardPath;
		
	}
	@RequestMapping("/deleteCartList.do")
	public String deleteCartList(@RequestParam("memberNo") int memberNo) {
		String forwardPath="";
		try {
			int deleteOk = cartService.deleteCartList(memberNo);
			if(deleteOk == 1) {
				forwardPath = "forward:/WEB-INF/view/cart_list.jsp";
			}else {
				forwardPath = "forward:/WEB-INF/view/error.jsp";
			}
		
		} catch(Exception e) {
			forwardPath = "forward:/WEB-INF/view/error.jsp";
			e.printStackTrace();
		}
		return forwardPath;
		
	}
	@RequestMapping("/deleteCartOne.do")
	public String deleteCartOne(@ModelAttribute Cart cart) {
		String forwardPath="";
		try {
			int deleteOk = cartService.deleteCartOne(cart);
			if(deleteOk == 1) {
				forwardPath = "redirect:cartList.do";
			}else {
				forwardPath = "forward:/WEB-INF/view/error.jsp";
			}
			
		} catch(Exception e) {
			forwardPath = "forward:/WEB-INF/view/error.jsp";
			e.printStackTrace();
		}
		return forwardPath;
		
	}
	
	
	
	
	
}
