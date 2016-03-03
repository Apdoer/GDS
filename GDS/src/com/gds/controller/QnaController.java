package com.gds.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gds.service.QnaService;
import com.gds.vo.QnaVO;
import com.gds.vo.SearchVO;

@Controller
@RequestMapping("/qna")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@RequestMapping("/enter.do")
	public String moveQna(Model model) {
		model.addAttribute("searchVO", qnaService.pagingQna(new SearchVO()));
		model.addAttribute("contentPage", "/qna.jsp");
		return "index";
	}
	
	@RequestMapping("/form.do")
	public String moveQnaForm(Model model) {
		model.addAttribute("contentPage", "/qna_form.jsp");
		return "index";
	}
	
	@RequestMapping("/write.do")
	public String writeQna(QnaVO qna) {
		qnaService.writeQna(qna);
		return "httpTest";
	}
	
	@RequestMapping("/list.do")
	public ModelAndView listBoard(SearchVO searchVO) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("searchVO", qnaService.pagingQna(searchVO));
		mav.addObject("contentPage", "/qna.jsp");
		mav.setViewName("index");
		return mav;
	}
	
	@RequestMapping("/answer.do")
	public String answerQna(QnaVO qna) {
		qnaService.answerQna(qna);
		return "httpTest";
	}
	
	@RequestMapping("/delete.do")
	public String deleteQna(int id) {
		qnaService.deleteQna(id);
		return "httpTest";
	}
	
}
