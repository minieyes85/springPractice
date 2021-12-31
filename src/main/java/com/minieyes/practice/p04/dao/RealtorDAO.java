package com.minieyes.practice.p04.dao;

import org.springframework.stereotype.Repository;

import com.minieyes.practice.p04.model.Realtor;

@Repository
public interface RealtorDAO {
	
	public int insertRealtor(Realtor realtor);
}
