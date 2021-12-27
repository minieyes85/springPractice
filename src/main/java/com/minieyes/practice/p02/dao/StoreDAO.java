package com.minieyes.practice.p02.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.minieyes.practice.p02.model.Store;

@Repository
public interface StoreDAO {
	
	public List<Store> selectStoreList();

}
