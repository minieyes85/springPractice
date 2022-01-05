package com.minieyes.practice.p05;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.minieyes.practice.p02.bo.StoreBO;

@Controller
@RequestMapping("/p05")
public class DeliveryController {
	
	@Autowired
	private StoreBO storeBO;
	
	@RequestMapping("/06")
	public String DeliveryMain(Model model) {
		
		model.addAttribute("storeList", storeBO.getStoreList());
		
		return "/practice05/06/deliveryServiceMain";
	}
	
	@RequestMapping("/06_storeInfo")
	public String StoreInfo(@RequestParam(value="id", required=true) int id,
			Model model) {
		model.addAttribute("reviewList", storeBO.getStoreReviewList(id));
		return "/practice05/06/deliveryServiceReview";
	}
}
