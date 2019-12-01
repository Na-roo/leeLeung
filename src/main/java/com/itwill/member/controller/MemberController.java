package com.itwill.member.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.itwill.member.Member;
import com.itwill.member.MemberDao;
import com.itwill.member.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/main.do")
	public String main() {
		String forwardPath="";
		forwardPath="forward:/WEB-INF/view/main.jsp";
		return forwardPath;
	}
	
	@RequestMapping("/member_list.do")
	public String member_list(Model model) {
		String forwardPath = "";
		try {
			List<Member> memberList = memberService.selectByAll();
			model.addAttribute("memberList", memberList);
			forwardPath = "forward:member_list.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:member_error.jsp";
		}
		return forwardPath;
	}
	
	@RequestMapping("/member_view.do")
	public String member_view(@RequestParam(value="memberNo", required=false, defaultValue="-999") String memberNo, Map map) {
		String forwardPath = "";
		try {
			Member member = memberService.selectByOne(Integer.parseInt(memberNo));
			if(member == null) {
				forwardPath = "redirect:main.do";
			} else {
				map.put("member", member);
				forwardPath = "forward:member_view.jsp";
			}
		}catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:member_error.jsp";
		}
		return forwardPath;
	}
	
	@RequestMapping("/member_JoinForm.do")
	public String member_insert_form() {
		String forwardPath = "";
		forwardPath = "forward:/WEB-INF/view/member_JoinForm.jsp";
		return forwardPath;
	}
	
	@RequestMapping(value = "/joinFormAction.do", method = RequestMethod.POST)
	public String member_insert_action(@ModelAttribute Member member) {
		String forwardPath = "";
		try {
			int insertOk = memberService.insertMember(member);
			if(insertOk == 1) {
				forwardPath = "redirect:main.do";
			} else {
				forwardPath = "forward:member_error.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
//			forwardPath = "forward:/WEB-INF/view/member_error.jsp";
		}
		return forwardPath;
	}
	
	@RequestMapping("/memberUpdateForm.do")
	public String member_update_form() {
		String forwardPath = "";
		try {
			forwardPath = "forward:/WEB-INF/view/member_UpdateForm.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:member_error.jsp";
		}
		return forwardPath;
	}
	
	@RequestMapping(value = "/memberUpdateAction.do", method = RequestMethod.POST)
	public String member_update_action(@ModelAttribute Member member,HttpSession session) {
		String forwardPath = "";
		try {
			int updateOk = memberService.updateMember(member);
			System.out.println(updateOk);
			if(updateOk == 1) {
				Member updateMember=memberService.selectByOne(member.getMemberNo());
				session.setAttribute("sMember",updateMember);
				forwardPath = "redirect:main.do";
			} else {
				forwardPath = "redirect:memberUpdateForm.do";
			}
		} catch (Exception e) {
			e.printStackTrace();
			//forwardPath = "forward:/WEB-INF/view/member.error.jsp";
		}
		return forwardPath;
	}
	
	@RequestMapping(value="/memberDeleteAction.do", method=RequestMethod.POST)
	public String member_delete_action(@RequestParam("memberNo") String memberNo) {
		String forwardPath = "";
		try {
			int deleteOk = memberService.deleteMember(Integer.parseInt(memberNo));
			if(deleteOk == 1) {
				forwardPath = "redirect:member_list.do";
			} else {
				forwardPath = "redirect:member_view.do"; 
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}
	
	/*
	@RequestMapping(value = "/member_login.do", method = RequestMethod.GET)
	public String login(String memberId, String memberPw, HttpSession session) {
		Member member = new Member(memberId, memberPw);
		int result = memberService.loginMember(member);
		if (result > 0) {
			session.setAttribute("memberId", memberId);
			//System.out.println(memberId);
			//System.out.println(memberPw);
			return "redirect:member_list.do";
		}
		else {
			return "forward:/WEB-INF/view/error.jsp";
		}
		
	}
	*/
	
	@RequestMapping("/memberLoginForm.do")
	public String loginForm() {
		String forwardPath = "";
		forwardPath = "forward:/WEB-INF/view/member_LoginForm.jsp";
		return forwardPath;
	}
	
	@RequestMapping(value = "/memberLogin.do", method = RequestMethod.POST)
	public ModelAndView login(HttpSession session, String memberId, String memberPw) {
		ModelAndView mav = new ModelAndView();
		Member member = new Member(memberId, memberPw);
		Member resultMember = memberService.loginMember(member);
		if(resultMember != null) {
			session.setAttribute("sMember", resultMember);
			mav.setViewName("redirect:main.do");
			System.out.println(memberId);
			System.out.println(memberPw);
		} else {
			mav.setViewName("forward:member_LoginForm.jsp");
		}
		return mav;
	}
	
	@RequestMapping(value = "/memberLogout.do", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:main.do";
	}
	
	@RequestMapping("/memberMypage.do")
	public String myPage() {
		String forwardPath = "";
		forwardPath = "forward:/WEB-INF/view/member_MyPage.jsp";
		return forwardPath;
	}
	
	
	
	
}
