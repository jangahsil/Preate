package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.Schedule;

public interface ScheduleDao {
	
	public int addSchedule(Schedule schedule);
	
	public int changeSchedule(Schedule schedule);
	
	public int removeSchedule(String code);	
	
	public List<Schedule> getSchedules(String uid, String startDate, String endDate);
	
	public Schedule getSchedule(String code);
	
	}
