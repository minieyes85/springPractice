package com.minieyes.practice.p04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minieyes.practice.p04.dao.SellerDAO;
import com.minieyes.practice.p04.model.Seller;

@Service
public class SellerBO {
	
	@Autowired
	private SellerDAO sellerDAO;
	
	public int addNewSeller(Seller seller) {
		return sellerDAO.insertNewSeller(seller);
	}
	
	public Seller getLastSeller() {
		return sellerDAO.selectLastSeller();
	}
	
	public Seller getSeller(int id) {
		return sellerDAO.selectSeller(id);
	}
}
