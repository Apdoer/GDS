package com.gds.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gds.service.QnaService;
import com.gds.vo.QnaVO;

@Controller
@RequestMapping("/qna")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@RequestMapping("/enter.do")
	public String moveBoard(Model model) {
		model.addAttribute("contentPage", "/qna.jsp");
		return "index";
	}
	
	@RequestMapping("/form.do")
	public String moveForm(Model model) {
		model.addAttribute("contentPage", "/qna_form.jsp");
		return "index";
	}
	
	@RequestMapping("/write.do")
	public String writeQna(QnaVO qna) {
		qnaService.writeQna(qna);
		return "httpTest";
	}
	
	@RequestMapping("/answer.do")
	public String answerQna(QnaVO qna) {
		qnaService.answerQna(qna);
		return "httpTest";
	}
	
	@RequestMapping("/delete.do")
	public String deleteCategory(int id) {
		qnaService.deleteQna(id);
		return "httpTest";
	}
	
}
