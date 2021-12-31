package com.minieyes.practice.p04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.minieyes.practice.p04.bo.RealtorBO;
import com.minieyes.practice.p04.model.Realtor;

@Controller
@RequestMapping("/p041")
public class RealtorController {
	
	@Autowired
	private RealtorBO realtorBO;
	
	@RequestMapping("/01")
	public String realtorInput() {
		return "practice04/02";
	}
	
	@PostMapping("/addRealtor")
	public String realtorAdd(@ModelAttribute Realtor realtor) {
		realtorBO.realtorAdd(realtor);
		return "practice04/newRealtorInfo";
	}

}
