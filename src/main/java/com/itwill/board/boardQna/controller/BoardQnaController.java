package com.itwill.board.boardQna.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itwill.board.boardQna.BoardQna;
import com.itwill.board.boardQna.BoardQnaService;
import com.itwill.board.boardQna.PageMakerInput;
import com.itwill.board.boardQna.PageMakerOutput;

@Controller
public class BoardQnaController {
	
	@Autowired
	private BoardQnaService boardQnaService;
	
	
	/*
	 * 게시물 리스트 전체보기
	 * */
	@RequestMapping("boardQnalist.do")
	public String boardQnaList(@RequestParam(value = "pageno", required = false, defaultValue = "1") String pageno,
								@RequestParam(defaultValue="",required=false) String searchOption,
								@RequestParam(defaultValue="",required=false) String keyword,
								Model model, HttpSession Session) {
		String forwardPath = "";
		
		if (searchOption == null) searchOption = "qnaTitle";
		if (keyword == null) keyword = "";
		
		if (pageno==null||pageno.equals("")) {
			pageno="1";
		}
		
		int rowCountPerPage = 20;
		int pageCountPerPage = 5;
		
		try {
			PageMakerInput pageInputDto = 
					new PageMakerInput(rowCountPerPage, pageCountPerPage, pageno);
			
			PageMakerOutput boardListPage = boardQnaService.boardQnaCount(pageInputDto, searchOption, keyword);
			
			model.addAttribute("boardListPage", boardListPage);
			Session.setAttribute("searchOption", searchOption);
			Session.setAttribute("keyword", keyword);
			
			forwardPath = "forward:/WEB-INF/view/boardQna_list_form.jsp";
			
		} catch (Exception e) {
			forwardPath="forward:/WEB-INF/view/error.jsp";
			e.printStackTrace();
		}
		
		return forwardPath;
	}
	
	/*
	 * 게시물 리스트 검색기능, list_form.jsp에 기능 합침 굳이 필요하진 않음
	 * */
	@RequestMapping("boardQnaSearchList.do")
	public ModelAndView list(@RequestParam(defaultValue = "", required = false) String searchOption,
							 @RequestParam(defaultValue = "", required = false) String keyword, Map map) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		List<BoardQna> SearchList = boardQnaService.listAll(searchOption, keyword);
		
		int count = boardQnaService.countArticle(searchOption, keyword);
		map.put("SearchList",SearchList);
		map.put("count",count);
		map.put("searchOption",searchOption);
		map.put("keyword",keyword);
		mav.setViewName("/WEB-INF/view/boardQna_search_list_form.jsp");
		
		return mav;
	}

	
	
	/*
	 * 게시물 조회(번호)
	 */
	@RequestMapping("boardQna_view.do")
	public String boardQna_view_qnano(@RequestParam(value="qnaNo") String qnaNo, Model model) {
		String forwardPath = "";
		
		try {
			BoardQna boardQna = boardQnaService.boardQnaSelectByQnaNo(Integer.parseInt(qnaNo));
			int boardQnainquiryUpdate = boardQnaService.boardQnainquiryUpdate(Integer.parseInt(qnaNo));
			
			if (boardQna == null) {
				forwardPath = "redirect:boardQnalist.do";
			} else {
				model.addAttribute("boardQna", boardQna);
				model.addAttribute("boardQnainquiryUpdate", boardQnainquiryUpdate);
				forwardPath = "forward:/WEB-INF/view/boardQna_view_form.jsp";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath="forward:/WEB-INF/view/error.jsp";
		}
		
		return forwardPath;
	}
	
	
	
	/*
	 * 게시물 작성하기
	 */
	//게시물 작성 폼
	@RequestMapping("boardQna_insert_form.do")
	public String boardQna_insert_form() {
		String forwardPath = "";
		forwardPath = "forward:/WEB-INF/view/boardQna_insert_form.jsp";
		return forwardPath;
	}
		
	//게시물 작성 액션
	@RequestMapping(value = "boardQna_insert_action.do", method = RequestMethod.POST)
	public String boardQna_insert_action(@ModelAttribute BoardQna boardQna) throws Exception {
		String forwardPath = "";
		
		try {
			int boardQnaInsert = boardQnaService.insertBoardQna(boardQna);
			if (boardQnaInsert == 1) {
				forwardPath = "forward:/WEB-INF/view/boardQna_list_form.jsp";
			} else {
				forwardPath = "forward:/WEB-INF/view/error.jsp";
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/view/error.jsp";
		}
		
		return forwardPath;
	}
	
	
	
	/*
	 * 게시물 수정하기
	 */
	//게시물 수정 폼
	@RequestMapping(value="boardQna_modify_form.do",method = RequestMethod.POST)
	public String boardQna_modify_form(@RequestParam(value="qnaNo",required=false,defaultValue="1") String qnaNo, Model model) {
		String forwardPath = "";
		
		try {
			BoardQna boardQna = boardQnaService.boardQnaSelectByQnaNo(Integer.parseInt(qnaNo));
			if (boardQna == null) {
				forwardPath = "redirect:boardQna_view.do";
			} else {
				model.addAttribute("boardQna",boardQna);
				forwardPath = "forward:/WEB-INF/view/boardQna_modify_form.jsp";
			}
			
		} catch (Exception e) {
			forwardPath="forward:/WEB-INF/view/error.jsp";
			e.printStackTrace();
		}
		
		return forwardPath;
	}	
	
	
	//게시물 수정 액션
	@RequestMapping(value="boardQna_modify_action.do",method = RequestMethod.POST)
	public String boardQna_modify_action(@ModelAttribute BoardQna boardQna)throws Exception {
		String forwardPath ="";
		
		try {
			int boardQnaUpdate = boardQnaService.boardQnaUpdate(boardQna);

			if (boardQnaUpdate == 1) {
				forwardPath = "redirect:boardQna_view.do?qnaNo="+boardQna.getQnaNo();
				
			} else {
				forwardPath = "forward:/WEB-INF/view/error.jsp";
			}
			
		} catch (Exception e) {
			forwardPath="forward:/WEB-INF/view/error.jsp";
			e.printStackTrace();
		}
		
		return forwardPath;
	}
	
	
	
	/*
	 * 게시물 삭제하기(번호)
	 */
	@RequestMapping(value = "/boardQna_delete_action.do", method = RequestMethod.POST)
	public String boardQna_delete_action_post(@RequestParam("qnaNo") String qnaNo) {
		String forwardPath = "";
		
		try {
			int deleteQna = boardQnaService.deleteBoardQna(Integer.parseInt(qnaNo));
			if (deleteQna == 1) {
				forwardPath = "redirect:boardQnalist.do";
				
			} else {
				forwardPath = "forward:/WEB-INF/view/error.jsp";
		
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/view/error.jsp";
		}
		
		return forwardPath;
	}
	
	

}
