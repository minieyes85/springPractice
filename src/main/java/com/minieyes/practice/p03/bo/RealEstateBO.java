package com.minieyes.practice.p03.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minieyes.practice.p03.dao.RealEstateDAO;
import com.minieyes.practice.p03.model.RealEstate;

@Service
public class RealEstateBO {

	@Autowired
	private RealEstateDAO realEstateDAO;
	
	public RealEstate getRealEstate(int id) {
		return realEstateDAO.selectRealEstate(id);
	}
	
	public List<RealEstate> getRentPriceRealEstateList(int rentPrice){
		return realEstateDAO.selectRentPriceRealEstateList(rentPrice);
	}
	
	public List<RealEstate> getAreaPriceRealEstateList(int area, int price){
		return realEstateDAO.selectAreaPriceRealEstateList(area, price);
	}
	
	public int insertRealEstate(RealEstate realEstate) {
		return realEstateDAO.insertRealEstate(realEstate);
	}
	
	public int insertRealEstateField(
			int realtorId, String address, int area, String type, int price, int rentPrice) {
		return realEstateDAO.insertRealEstateField(realtorId, address, area, type, price, rentPrice);
	}
	
	public int updateRealEstate(int id, String newType, int newPrice) {
		return realEstateDAO.updateRealEstate(id, newType, newPrice);
	}
	
	public int deleteRealEstate(int id) {
		return realEstateDAO.deleteRealEstate(id);
	}
	
}
