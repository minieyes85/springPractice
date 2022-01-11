package com.minieyes.practice.p06.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.minieyes.practice.p06.model.Booking;

@Repository
public interface BookingDAO {

	public List<Booking> selectBooking();
	
	public int deleteBooking(int id);
	
	public int insertBooking(Booking booking);
}
