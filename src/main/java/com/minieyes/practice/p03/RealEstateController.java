package com.minieyes.practice.p03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.minieyes.practice.p03.bo.RealEstateBO;
import com.minieyes.practice.p03.model.RealEstate;

@RestController
public class RealEstateController {
	
	@Autowired
	private RealEstateBO realEstateBO;
	
	@RequestMapping("/p03/01")
	public RealEstate practice01(
			@RequestParam(value="id", required=false, defaultValue="2") int id) {
		
		return realEstateBO.getRealEstate(id);		
		
	}
	
	@RequestMapping("/p03/02")
	public List<RealEstate> practice02(
			@RequestParam("rent") int rent) {
		
		return realEstateBO.getRentPriceRealEstateList(rent);
		
	}
	
	@RequestMapping("/p03/03")
	public List<RealEstate> practice03(
			@RequestParam("price") int price,
			@RequestParam("area") int area) {
		
		return realEstateBO.getAreaPriceRealEstateList(area, price);
		
	}

}
