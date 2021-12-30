package com.minieyes.practice.p04.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.minieyes.practice.p04.model.Seller;

@Repository
public interface SellerDAO {

	public int insertNewSeller(Seller seller);
	
	public Seller selectLastSeller();
	
	public Seller selectSeller(@Param("id") int id);
}
