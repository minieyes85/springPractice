package com.minieyes.practice.p05;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.minieyes.practice.p05.bo.JSTLBO;
import com.minieyes.practice.p05.model.Member;

@Controller
@RequestMapping("/p05")
public class JSTLController {
	
	@Autowired
	private JSTLBO jstlBO;
	
	@RequestMapping("/01")
	public String practice01() {
		return "/practice05/01";
	}
	
	@RequestMapping("/02-1")
	public String practice021(Model model) {
		
		List<String> musicRanking = jstlBO.getMusicRanking();
		
		model.addAttribute("musicRanking", musicRanking);
		
		return "/practice05/02-1";
	}
	
	@RequestMapping("/02-2")
	public String practice022(Model model) {
		
		List<Map<String, Object>> membership = jstlBO.getMembership();
		
		model.addAttribute("membership", membership);
		
		return "/practice05/02-2";
	}
	
	@RequestMapping("/03")
	public String practice03(Model model) {
		
		List<Map<String,Object>> candidatesInfo = jstlBO.getCandidates();
		
		model.addAttribute("candidatesInfo", candidatesInfo);
		
		List<Map<String,Object>> cardBills = jstlBO.getCardBills();
		
		model.addAttribute("cardBills", cardBills);		
		
		return "/practice05/03";
	}
	
	@RequestMapping("/04")
	public String practice04(Model model) {
		
		List<Member> members = jstlBO.getMemberList();
		
		model.addAttribute("members", members);
		
		return "/practice05/04";
	}
}
