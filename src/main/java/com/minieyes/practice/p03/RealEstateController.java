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
	
	@RequestMapping("/p03/04")
	public String practice04() {
		
		RealEstate realEstate = new RealEstate();
		realEstate.setRealtorId(3);
		realEstate.setAddress("푸르지용 리버 303동 1104호");
		realEstate.setArea(89);
		realEstate.setType("매매");
		realEstate.setPrice(100000);
		
		int count = realEstateBO.insertRealEstate(realEstate);
		String output = "입력 성공 : " + count;
		
		return output;
	}
	
	@RequestMapping("/p03/05")
	public String practice05(
			@RequestParam("realtorId") int realtorId) {
		
		String address = "썅떼빌리버 오피스텔 814호";
		int area = 45;
		String type = "월세";
		int price = 100000;
		int rentPrice = 120;
		
		int count = realEstateBO.insertRealEstateField(realtorId, address, area, type, price, rentPrice);
		String output = "입력 성공 : " + count;
		
		return output;
	}

}
