package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.ScheduleDao;
import com.jass.preate.vo.Schedule;

public class MyBatisScheduleDao implements ScheduleDao {

	private SqlSession session;

	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public int addSchedule(Schedule schedule) {

		return session
				.insert("com.jass.preate.dao.mybatis.ScheduleDao.addSchedule",
						schedule);
	}

	@Override
	public int changeSchedule(Schedule schedule) {

		return session.update(
				"com.jass.preate.dao.mybatis.ScheduleDao.changeSchedule",
				schedule);
	}

	@Override
	public int removeSchedule(String code) {

		return session.delete(
				"com.jass.preate.dao.mybatis.ScheduleDao.removeSchedule", code);
	}

	@Override
	public List<Schedule> getSchedules(String mid, String startDate,
			String endDate) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("mid", mid);
		params.put("startDate", startDate);
		params.put("endDate", endDate);

		return session.selectList("getSchedules", params);
	}

	@Override
	public Schedule getSchedule(String code) {

		return session.selectOne("com.jass.preate.dao.ScheduleDao.getSchedule",
				code);
	}

}
