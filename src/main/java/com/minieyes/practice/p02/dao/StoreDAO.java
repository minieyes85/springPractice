package com.minieyes.practice.p02.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.minieyes.practice.p02.model.Store;
import com.minieyes.practice.p05.model.Review;

@Repository
public interface StoreDAO {
	
	public List<Store> selectStoreList();
	
	public List<Review> selectStoreReviewList(@Param("id") int id);

}
