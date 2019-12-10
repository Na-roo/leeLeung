package com.itwill.board.boardReview.controller;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.itwill.board.boardReview.BoardReview;
import com.itwill.board.boardReview.BoardReviewService;
import com.itwill.board.boardReview.PageMakerInput;
import com.itwill.board.boardReview.PageMakerOutput;

@Controller
public class BoardReviewController {
	@Autowired
	private BoardReviewService boardReviewService;
	
	@RequestMapping("/board_review_list.do")
	public String board_review_list(@RequestParam(value="pageno", required=false, defaultValue="1") String pageno ,Model model) {
		String forwardPath = "";
		//1.요청페이지번호	
			if(pageno==null||pageno.equals("")){
				pageno="1";
			}
			//2.한페이지에표시할 게시물수 
			int rowCountPerPage = 10;
			//3.한페이지에보여줄 페이지번호갯수(<< 1 2 3 4 5 >>)
			int pageCountPerPage = 5;
		try {
			//페이징(계산)을위한DTO,VO  
			PageMakerInput pageInputDto=
					new PageMakerInput(rowCountPerPage,pageCountPerPage,pageno);
			//게시물조회
			PageMakerOutput boardListPage 
			=boardReviewService.boardReviewCount(pageInputDto);
			//마지막 페이지를 마지막 페이지 블록과 현재 페이지 블록 번호로 정함 
			model.addAttribute("boardListPage", boardListPage);
			forwardPath = "forward:/WEB-INF/view/boardReview_list.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "redirect:error.do";
		}
		return forwardPath;
	}
	
	@RequestMapping("/boardReviewView.do")
	public ModelAndView board_review_view(@RequestParam int reviewNo, HttpSession session) throws Exception {
		// 조회수 증가 처리
		boardReviewService.reviewViewCount(reviewNo, session);
		// Model(데이터) + View(화면) 을 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		mav.setViewName("forward:/WEB-INF/view/boardReview_view.jsp");
		mav.addObject("boardReview", boardReviewService.selectByOne(reviewNo));
		return mav;
	}
	
	@RequestMapping("/board_review_insert_form.do")
	public String board_review_insert_form() {
		String forwardPath = "";
		forwardPath = "forward:/WEB-INF/view/boardReview_insert.jsp";
		return forwardPath;
	}
	
	@RequestMapping(value = "/board_review_insert_action.do", method = RequestMethod.POST)
	public String board_review_insert_action(@ModelAttribute BoardReview boardReview) {
		String forwardPath = "";
		try {
			int insertOk = boardReviewService.insertBoardReview(boardReview);
			if(insertOk == 1) {
				forwardPath = "redirect:board_review_list.do?pageno=1";				
			} else {
				forwardPath = "redirect:board_review_insert_form.do";
			}
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "redirect:error.do";
		}
		return forwardPath;
	}
	
	@RequestMapping(value = "/board_review_update_form.do", method = RequestMethod.POST)
	public String board_review_update_form(@RequestParam(value="reviewNo", required=false, defaultValue="1") String reviewNo, Model model) {
		String forwardPath = "";
		try {
			BoardReview boardReview = boardReviewService.selectByOne(Integer.parseInt(reviewNo));
			model.addAttribute("boardReview", boardReview);
			forwardPath = "forward:/WEB-INF/view/boardReview_update.jsp";
		}catch (Exception e) {
			e.printStackTrace();
			forwardPath = "redirect:error.do";
		}
		return forwardPath;
	}
	
	@RequestMapping(value = "/board_review_update_action.do", method = RequestMethod.POST)
	public String board_review_update_action(@ModelAttribute BoardReview boardReview) {
		String forwardPath = "";
		try {
			int updateOk = boardReviewService.updateBoardReview(boardReview);
			System.out.println(updateOk);
			if(updateOk == 1) {
				forwardPath = "forward:/WEB-INF/view/boardReview_view.jsp";
			} else {
				forwardPath = "redirect:error.do";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}
	
	@RequestMapping("/board_review_delete_action.do")
	public String board_review_delete_action(@RequestParam(value="reviewNo",required=false,defaultValue="1") String reviewNo) {
		String forwardPath = "";
		try {
			int deleteOk = boardReviewService.deleteBoardReview(Integer.parseInt(reviewNo));
			System.out.println(deleteOk);
			if(deleteOk == 1) {
				forwardPath = "redirect:board_review_list.do";
			} else {
				forwardPath = "redirect:error.do";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}
	
	@RequestMapping("/error.do")
	public String error() {
		String forwardPath = "";
		forwardPath = "forward:/WEB-INF/view/error.jsp";
		return forwardPath;
	}
	
	@RequestMapping(value = "/upload.do" , method = RequestMethod.POST)
	public String upload(MultipartHttpServletRequest mtf) throws Exception {
		String forwardPath = "";
		// 파일 태그
		String fileTag = "file";
	    	// 업로드 파일이 저장될 경로
		String filePath = "C:\\testFile\\";
		// 파일 이름	
		MultipartFile file = mtf.getFile(fileTag);
		String fileName = file.getOriginalFilename();
		// 파일 전송
		try {
		    file.transferTo(new File(filePath + fileName));
		} catch(Exception e) {
		    System.out.println("업로드 오류");
		}
		forwardPath = "redirect:main.do";
		return forwardPath;
			         
	}
}
