package com.minieyes.practice.p01;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/practice01/02")
@RestController
public class P02Controller {
	
	@RequestMapping("/01")
	public List<Map<String, Object>> printList() {
		List<Map<String, Object>> list  = new ArrayList<>();
		int[] rates = {15, 0, 12, 19, 15};
		String[] directors = {"봉준호","로베르토 베니니","크리스토퍼 놀란","윤종빈","프란시스 로렌스"};
		int[] times = {131,116,147,133,137};
		String[] titles = {"기생충","인생은 아름다워","인셉션","범죄와의 전쟁 : 나쁜놈들 전성시대","헝거게임"};
		
		for(int i = 0; i< rates.length ; i++) {
			
			Map<String, Object> map = new HashMap<>();
			
			map.put("rate", rates[i]);
			map.put("director", directors[i]);
			map.put("time", times[i]);
			map.put("title", titles[i]);
			
			list.add(map);
			
		}	
				
		return list;
		
	}
	
	@RequestMapping("/02")
	public List<Introduce> printList2() {
		List<Introduce> list = new ArrayList<>();
		String[] titles = {"안녕하세요 가입인사 드립니다.","헐 대박","오늘 데이트 한 이야기 해드릴게요."};
		String[] users = {"hagulu","bada","dulumary"};
		String[] contents = {"안녕하세요. 가입했어요. 앞으로 잘 부탁드립니다. 활동 열심히 하겠습니다.","오늘 목요일이었어... 금요일인줄","...."};
		
		for(int i = 0 ; i<titles.length ; i++) {
			Introduce intro = new Introduce();
			intro.setTitle(titles[i]);
			intro.setUser(users[i]);
			intro.setContent(contents[i]);
			
			list.add(intro);
		}
		
		return list;
	}
	
	@RequestMapping("/03")
	public ResponseEntity<Introduce> entity() {
		Introduce introduce = new Introduce();
		introduce.setTitle("안녕하세요 가입인사 드립니다.");
		introduce.setUser("hagulu");
		introduce.setContent("안녕하세요. 가입했어요. 앞으로 잘 부탁드립니다. 활동 열심히 하겠습니다.");
		
		ResponseEntity<Introduce> entity = new ResponseEntity<>(introduce, HttpStatus.INTERNAL_SERVER_ERROR);
				
		return entity;
		
	}

}
