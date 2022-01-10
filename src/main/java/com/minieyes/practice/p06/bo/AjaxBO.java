package com.minieyes.practice.p06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minieyes.practice.p06.dao.AjaxDAO;
import com.minieyes.practice.p06.model.Favorite;

@Service
public class AjaxBO {
	
	@Autowired
	private AjaxDAO ajaxDAO;
	
	public int addFavorite(Favorite favorite) {
				
		return ajaxDAO.insertFavorite(favorite);
	}
	
	public List<Favorite> showFavorites() {
		return ajaxDAO.selectFavorites();
	}

}
