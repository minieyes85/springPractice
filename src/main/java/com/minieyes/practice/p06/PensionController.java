package com.minieyes.practice.p06;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.minieyes.practice.p06.bo.BookingBO;
import com.minieyes.practice.p06.model.Booking;

@Controller
@RequestMapping("/pension")
public class PensionController {
	
	@Autowired
	private BookingBO bookingBO;
	
	@RequestMapping("/main")
	public String main() {
		return "/practice06/total/mainpage";
	}
	
	@RequestMapping("/main.do")
	public String mainPage() {
		return "/practice06/total/mainSection";
	}
	
	@RequestMapping("/reservation.do")
	public String reservationPage() {
		return "/practice06/total/reservation";
	}
	
	
	@RequestMapping("/reservList")
	public String reservList(Model model) {
		
		model.addAttribute("bookingList", bookingBO.findBooking());
		
		return "/practice06/total/reservList";
	}
	
	@RequestMapping("/deleteReserv")
	@ResponseBody
	public int deleteReserv(@RequestParam("id") int id) {
				
		return bookingBO.removeBooking(id);
	}
	
	@RequestMapping("/booking.do")
	@ResponseBody
	public int makeBooking(@ModelAttribute Booking booking) {
		return bookingBO.makeBooking(booking);
	}
	
}
