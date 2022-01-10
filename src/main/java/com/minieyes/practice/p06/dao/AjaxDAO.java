package com.minieyes.practice.p06.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.minieyes.practice.p06.model.Favorite;

@Repository
public interface AjaxDAO {
	
	public int insertFavorite(Favorite favorite);
	
	public List<Favorite> selectFavorites();
	
	public int deleteFavorite(int id);
	
}
