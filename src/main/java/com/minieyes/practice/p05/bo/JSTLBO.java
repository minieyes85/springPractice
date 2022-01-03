package com.minieyes.practice.p05.bo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minieyes.practice.p05.dao.JSTLDAO;
import com.minieyes.practice.p05.model.Member;

@Service
public class JSTLBO {
	
	@Autowired
	private JSTLDAO jstlDAO;
	
	public List<String> getMusicRanking() {
		List<String> musicRanking = new ArrayList<>();
		musicRanking.add("강남스타일");
		musicRanking.add("벚꽃엔딩");
		musicRanking.add("좋은날");
		musicRanking.add("거짓말");
		musicRanking.add("보고싶다");
		
		return musicRanking;
	}
	
	public List<Map<String, Object>> getMembership() {
		List<Map<String, Object>> membership = new ArrayList<>();

		Map<String, Object> member = new HashMap<>();
		member.put("name", "손오공");
		member.put("phoneNumber", "010-1234-5678");
		member.put("grade", "VIP");
		member.put("point", 12040);
		membership.add(member);

		member = new HashMap<>();
		member.put("name", "저팔계");
		member.put("phoneNumber", "010-4321-1234");
		member.put("grade", "BASIC");
		member.put("point", 3420);
		membership.add(member);

		member = new HashMap<>();
		member.put("name", "사오정");
		member.put("phoneNumber", "010-8888-1111");
		member.put("grade", "GOLD");
		member.put("point", 1530);
		membership.add(member);

		member = new HashMap<>();
		member.put("name", "삼장");
		member.put("phoneNumber", "010-0000-1234");
		member.put("grade", "GOLD");
		member.put("point", 8450);
		membership.add(member);

		member = new HashMap<>();
		member.put("name", "우마왕");
		member.put("phoneNumber", "010-1111-2222");
		member.put("grade", "BASIC");
		member.put("point", 420);
		membership.add(member);
		
		return membership;
	}
	
	public List<Map<String,Object>> getCandidates() {
		
		List<Integer> candidates = new ArrayList<>();
		candidates.add(263001);
		candidates.add(173942); 
		candidates.add(563057);
		
		Integer sum = 0;
		
		for(Integer vote:candidates) {
			sum += vote;
		}
		
		List<Map<String,Object>> candidatesInfo = new ArrayList<>();
		Map<String, Object> candidateInfo = new HashMap<>();
		
		for(Integer vote:candidates) {
			candidateInfo = new HashMap<>();
			candidateInfo.put("vote", vote);
			double rate = (double) vote/sum;
			candidateInfo.put("rate", rate);
			candidatesInfo.add(candidateInfo);
		}
		
		return candidatesInfo;
	}
	
	public List<Map<String, Object>> getCardBills() {		
	
		List<Map<String, Object>> cardBills = new ArrayList<>();
	
		Map<String, Object> cardBill = new HashMap<>();
		cardBill.put("store", "GS48");
		cardBill.put("pay", 7800);
		cardBill.put("date", "2025-09-14");
		cardBill.put("installment", "일시불");
		cardBills.add(cardBill);
	
		cardBill = new HashMap<>();
		cardBill.put("store", "현태백화점");
		cardBill.put("pay", 2750000);
		cardBill.put("date", "2025-09-18");
		cardBill.put("installment", "3개월");
		cardBills.add(cardBill);
	
		cardBill = new HashMap<>();
		cardBill.put("store", "요촌치킨");
		cardBill.put("pay", 180000);
		cardBill.put("date", "2025-09-20");
		cardBill.put("installment", "일시불");
		cardBills.add(cardBill);
		
		return cardBills;

	}
	
	public List<Member> getMemberList() {
		List<Member> members = jstlDAO.getMemberList();
		return members;
	}
}
