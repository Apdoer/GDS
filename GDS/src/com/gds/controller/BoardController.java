package com.gds.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gds.service.BoardService;
import com.gds.vo.BoardVO;
import com.gds.vo.SearchVO;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/enter.do")
	public String moveBoard(Model model) {
		model.addAttribute("searchVO", boardService.pagingBoard(new SearchVO()));
		model.addAttribute("contentPage", "/board.jsp");
		return "index";
	}
	
	@RequestMapping("/form.do")
	public String moveBoardForm(Model model) {
		model.addAttribute("contentPage", "/board_form.jsp");
		return "index";
	}
	
	@RequestMapping("/write.do")
	public String writeBoard(BoardVO board) {
		boardService.writeBoard(board);
		return "index";
	}
	
	@RequestMapping("/get.do")
	public ModelAndView getBoard(BoardVO boardVO) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("board", boardService.getBoard(boardVO));
		mav.addObject("contentPage", "/board_content.jsp");
		mav.setViewName("index");
		return mav;
	}
	
	@RequestMapping("/list.ajax")
	public ModelAndView listBoard(SearchVO searchVO) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("searchVO", boardService.pagingBoard(searchVO));
		mav.setViewName("board_list_ajax");
		return mav;
	}
	
	@RequestMapping("/modify.do")
	public String modifyBoard(BoardVO board) {
		boardService.modifyBoard(board);
		return "index";
	}
	
	@RequestMapping("/delete.do")
	public String deleteBoard(int id) {
		boardService.deleteBoard(id);
		return "index";
	}
	
}
