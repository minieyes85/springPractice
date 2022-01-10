package com.minieyes.practice.p06;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.minieyes.practice.p06.bo.BookingBO;

@Controller
@RequestMapping("/pension")
public class PensionController {
	
	@Autowired
	private BookingBO bookingBO;
	
	@RequestMapping("/main")
	public String main() {
		return "/practice06/total/mainpage";
	}
	
	@RequestMapping("/reservation.do")
	public String reservation(Model model) {
		
		model.addAttribute("bookingList", bookingBO.findBooking());
		
		return "/practice06/total/reservation";
	}
	
}
