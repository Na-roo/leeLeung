package com.itwill.board.boardNotice.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itwill.board.boardNotice.BoardNotice;
import com.itwill.board.boardNotice.BoardNoticeService;
import com.itwill.board.boardNotice.PageMakerInput;
import com.itwill.board.boardNotice.PageMakerOutput;


@Controller
public class BoardNoticeController {
	
	@Autowired
	private BoardNoticeService boardnoticeService;
	 
	
	@RequestMapping("boardNoticeSearchList.do")
	public  ModelAndView list(
			  @RequestParam(defaultValue="",required=false) String searchOption,
			  @RequestParam(defaultValue="",required=false) String keyword,Map map)throws Exception {
		
		
		
		ModelAndView mav = new ModelAndView();
		List<BoardNotice> SearchList = boardnoticeService.listAll(searchOption,keyword);
		System.out.println(SearchList.size());
		
		int count = boardnoticeService.countArticle(searchOption, keyword);
				map.put("SearchList",SearchList);
				map.put("count",count);
				map.put("searchOption",searchOption);
				map.put("keyword",keyword);
			    mav.setViewName("/WEB-INF/view/board_list23.jsp"); // 뷰를 list.jsp로 설정
	     
	     return mav; // list.jsp로 List가 전달된다.
		
	}
	
	
	
	@RequestMapping("boardNoticeList.do")
	public String boardNoticeList(@RequestParam(value="pageno",defaultValue="1",required=false)String pageno,
								  @RequestParam(defaultValue="",required=false) String searchOption,
								  @RequestParam(defaultValue="",required=false) String keyword,
								  Model model,HttpSession Session) {
		
		String forwardPath ="";
		
		//1.요청페이지번호	
		if (searchOption == null) searchOption = "noticetitle";
		if (keyword == null) keyword ="";
		
		if(pageno==null||pageno.equals("")){
			pageno="1";
		}
		//2.한페이지에표시할 게시물수 
		int rowCountPerPage = 20;
		//3.한페이지에보여줄 페이지번호갯수(<< 1 2 3 4 5 >>)
		int pageCountPerPage = 5;
		
		try {
			//페이징(계산)을위한DTO,VO  
			PageMakerInput pageInputDto=
					new PageMakerInput(rowCountPerPage,pageCountPerPage,pageno);
			
			//게시물조회
			PageMakerOutput boardListPage 
			=boardnoticeService.boardNoticeCount(pageInputDto, searchOption, keyword);
			
			//마지막 페이지를 마지막 페이지 블록과 현재 페이지 블록 번호로 정함
			//List<BoardNotice> boardNoticeList = new ArrayList<>();
			model.addAttribute("boardListPage",boardListPage);
			
			Session.setAttribute("searchOption", searchOption);
			Session.setAttribute("keyword", keyword);
			

			forwardPath="forward:/WEB-INF/view/boardNotice_list_form.jsp";
	
			
		} catch (Exception e) {
			forwardPath="forward:/WEB-INF/view/error.jsp";
			e.printStackTrace();
		}
		return forwardPath;
	}

	
	//리스트디테일 view
	@RequestMapping("boardNoticeView.do")
	public String boardNoticeView(@RequestParam(value="noticeno")String noticeno,Model model) {
		String forwardPath ="";
		
		try {
			BoardNotice boardNotice =  boardnoticeService.boardNoticeSelectByMemberNo(Integer.parseInt(noticeno));
			int boardNoticenoticeinquiryUpdate = boardnoticeService.boardNoticenoticeinquiryUpdate(Integer.parseInt(noticeno));
			if (boardNotice == null) {
				forwardPath ="redirect:boardNoticeList.do";
			}else {
				model.addAttribute("boardNotice", boardNotice);
				model.addAttribute("boardNoticenoticeinquiryUpdate", boardNoticenoticeinquiryUpdate);
				forwardPath ="forward:/WEB-INF/view/boardNotice_view_form.jsp";
				
			}
			
		} catch (Exception e) {
			forwardPath="forward:/WEB-INF/view/error.jsp";
			e.printStackTrace();
		}
		
		return forwardPath;
		
	}
	@RequestMapping(value="boardnotice_modify_form.do",method=RequestMethod.POST)
	public String boardnotice_modify_form(@RequestParam(value="noticeno",required=false,defaultValue="1") String noticeno,Model model) {
		String forwardPath ="";
		
		
		try {
			BoardNotice boardNotice = boardnoticeService.boardNoticeSelectByMemberNo(Integer.parseInt(noticeno));
			if (boardNotice == null) {
				forwardPath ="redirect:boardNoticeView.do?noticeno="+boardNotice.getNoticeno();
			}else {
				model.addAttribute("boardNotice", boardNotice);
				forwardPath ="forward:/WEB-INF/view/boardNotice_modify_form.jsp";
				
			}
		} catch (Exception e) {
			forwardPath="forward:/WEB-INF/view/error.jsp";
			e.printStackTrace();
		}
		return forwardPath;
	}
	
	@RequestMapping(value="boardNotice_modify_action.do",method=RequestMethod.POST)
	public String boardnotice_modify_action(@ModelAttribute BoardNotice boardNotice) {
		String forwardPath ="";
		
		
		try {
		int  BoardNoticeUpdate = boardnoticeService.boardNoticeUpdate(boardNotice); 
		if (BoardNoticeUpdate==1) {
			forwardPath="redirect:boardNoticeView.do?noticeno="+boardNotice.getNoticeno();
		}else {
			forwardPath="forward:/WEB-INF/view/error.jsp";
			
		}
		
		} catch (Exception e) {
			forwardPath="forward:/WEB-INF/view/error.jsp";
			e.printStackTrace();
		}
		
		
		return forwardPath;
	}
	
	@RequestMapping(value="boardnotice_delete_action.do",method=RequestMethod.POST)
	public String boardnotice_delete_foom(@RequestParam(value="noticeno",required=false,defaultValue="1")String noticeno) {
		String forwardPath ="";
		
		try {
			int BoardNoticeDelete = boardnoticeService.boardNoticedelete(Integer.parseInt(noticeno));
			if (BoardNoticeDelete == 1) {

				forwardPath ="redirect:boardNoticeList.do";
				
			}else {
				forwardPath="forward:/WEB-INF/view/error.jsp";
				
			}
		} catch (Exception e) {
			forwardPath="forward:/WEB-INF/view/error.jsp";
			e.printStackTrace();
		}
		
		
		return forwardPath;
		
	}
	
	
	@RequestMapping(value="boardnotice_insert_form.do",method=RequestMethod.POST)
	public String boardnotice_insert_form() {
		String forwardPath ="";
		forwardPath="/WEB-INF/view/boardNotice_insert_form.jsp";
		return forwardPath;
		
	}
	
	@RequestMapping(value="boardNotice_insert_action.do",method=RequestMethod.POST)
	public String boardnotice_insert_action(@ModelAttribute BoardNotice boardNotice) {
		String forwardPath ="";
		
		try {
			int boardNoticeInsert = boardnoticeService.boardNoticeInsert(boardNotice);
			if (boardNoticeInsert ==1) {
				forwardPath ="redirect:boardNoticeList.do";
			}else {
				forwardPath="forward:/WEB-INF/view/error.jsp";
				
			}
		
		} catch (Exception e) {
			forwardPath="forward:/WEB-INF/view/error.jsp";
			e.printStackTrace();
		}
		
		
		return forwardPath;
	}
	
	
	
	
}