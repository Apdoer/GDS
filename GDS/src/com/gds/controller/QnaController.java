package com.gds.controller;

import java.util.Map;

import org.codehaus.jackson.map.util.JSONPObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	@ResponseBody
	public boolean writeQna(QnaVO qna) {
		return qnaService.writeQna(qna);
	}
	
	@RequestMapping("/list.ajax")
	public ModelAndView listBoard(SearchVO searchVO) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("searchVO", qnaService.pagingQna(searchVO));
		mav.setViewName("qna_list_ajax");
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
