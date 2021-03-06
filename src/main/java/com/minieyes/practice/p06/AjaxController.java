package com.minieyes.practice.p06;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.minieyes.practice.p06.bo.AjaxBO;
import com.minieyes.practice.p06.model.Favorite;

@Controller
@RequestMapping("/p06")
public class AjaxController {
	
	@Autowired
	private AjaxBO ajaxBO;
	
	@RequestMapping("/test")
	public String ajaxTest() {
		
		return "/practice06/ajaxTest";
	}
	
	@RequestMapping("/01")
	public String practice01() {
		return "/practice06/01";
	}
	
	@PostMapping("/add")
	@ResponseBody
	public int addFavorite(
			@ModelAttribute Favorite favorite) {
		
		return ajaxBO.addFavorite(favorite);
	}
	
	@PostMapping("/delete")
	@ResponseBody
	public int deleteFavorite(@RequestParam("id") int id) {
		return ajaxBO.deleteFavorite(id);		
	}

	@RequestMapping("/01_list")
	public String showFavoriteList(Model model) {
		
		model.addAttribute("favoritesList", ajaxBO.showFavorites());
		
		return "/practice06/01List";
	}
	
	@GetMapping("/callList")
	@ResponseBody
	public List<Favorite> callFavoritesList(){
		return ajaxBO.showFavorites();
	}
	

}
