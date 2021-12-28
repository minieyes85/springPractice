package com.minieyes.practice.p03.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.minieyes.practice.p03.model.RealEstate;

@Repository
public interface RealEstateDAO {

	public RealEstate selectRealEstate(@Param("id") int id);
	
	public List<RealEstate> selectRentPriceRealEstateList(@Param("rentPrice") int rentPrice);
	
	public List<RealEstate> selectAreaPriceRealEstateList(@Param("area") int area, @Param("price") int price);
}
