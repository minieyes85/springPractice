package com.minieyes.practice.p04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.minieyes.practice.p04.bo.SellerBO;
import com.minieyes.practice.p04.model.Seller;

@Controller
@RequestMapping("/p04")
public class SellerController {
	
	@Autowired
	private SellerBO sellerBO;
	
	@RequestMapping("/01")
	public String inputAddSeller() {
		return "practice04/01";
	}
	
	@PostMapping("/add_seller" )
	public String addSeller(@ModelAttribute Seller seller) {
				
		sellerBO.addNewSeller(seller);
		
		return "practice04/01";
	}
	
	@RequestMapping("/02")
	public String getSeller(
			Model model,
			@RequestParam (value = "id", required = false) String idStr) {
		
		if(idStr == null) {
			model.addAttribute("seller", sellerBO.getLastSeller());
			return "practice04/sellerInfo";
		} else {
			int id = Integer.parseInt(idStr);
			model.addAttribute("seller", sellerBO.getSeller(id));
			return "practice04/sellerInfo";
		}
		
	}
	

}