package com.minieyes.practice.p06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minieyes.practice.p06.dao.BookingDAO;
import com.minieyes.practice.p06.model.Booking;

@Service
public class BookingBO {
	
	@Autowired
	private BookingDAO bookingDAO;
	
	public List<Booking> findBooking(){
		return bookingDAO.selectBooking();
	}
	
	public int removeBooking(int id) {
		return bookingDAO.deleteBooking(id);
	}
	
	public int makeBooking(Booking booking) {
		return bookingDAO.insertBooking(booking);
	}
	
	public Booking findBooking(String name, String phoneNumber) {
		return bookingDAO.findBooking(name, phoneNumber);
	}
}
