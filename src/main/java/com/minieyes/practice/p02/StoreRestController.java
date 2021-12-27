package com.minieyes.practice.p02;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.minieyes.practice.p02.bo.StoreBO;
import com.minieyes.practice.p02.model.Store;

@RestController
public class StoreRestController {
	
	@Autowired
	private StoreBO storeBO;

	@RequestMapping("/p02/01")
	public List<Store> practice01() {
		
		return storeBO.getStoreList();
	}
}
