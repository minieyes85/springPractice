package com.minieyes.practice.p04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minieyes.practice.p04.dao.RealtorDAO;
import com.minieyes.practice.p04.model.Realtor;

@Service
public class RealtorBO {
	
	@Autowired
	private RealtorDAO realtorDAO;
	
	public int realtorAdd(Realtor realtor) {
		return realtorDAO.insertRealtor(realtor);
	}

}
