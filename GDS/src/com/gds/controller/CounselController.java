package com.gds.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gds.service.CounselService;
import com.gds.vo.CounselVO;

@Controller
public class CounselController {
	
	private CounselService counselService;
	
	@Autowired
	public void setCounselService(CounselService counselService){
		this.counselService=counselService;
	}
	

	@RequestMapping("/counsel.do")
	public String monveCounsel(Model model){		
		model.addAttribute("contentPage", "/counsel.jsp");
		return "index";
	}
	
	@RequestMapping("/createCounsel.do")
	@ResponseBody
	public HashMap<String, Object> createCounsel(int categoryId, String counseleeName, String counseleeTelno, String possibleTime, String detail){
		HashMap<String, Object> map = new HashMap<String, Object>();
		CounselVO counsel = new CounselVO();
		counsel.setCategoryId(categoryId);
		counsel.setCounseleeName(counseleeName);
		counsel.setCounseleeTelno(counseleeTelno);
		counsel.setPossibleTime(possibleTime);
		counsel.setDetail(detail);
		//Counsel testC = new Counsel(2,"N","20160302",1,"test","01099990000","10","testtest","haha","N");
		boolean flag=counselService.createCounsel(counsel);
		
		if(flag){
			map.put("status", true);
			map.put("message", "신청 완료되었습니다.");
		}else{
			map.put("status", false);
			map.put("message", "신청 중 오류가 발생했습니다. 다시 시도해 주세요.");
		}
		
		return map;
	}
	
}
