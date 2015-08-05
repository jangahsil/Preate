package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jass.preate.dao.ScheduleDao;
import com.jass.preate.vo.Schedule;

public class MyBatisScheduleDao implements ScheduleDao {

	SqlSessionFactory factory = new SqlJassSessionFactory()
			.getSqlSessionFactory();

	@Override
	public int addSchedule(Schedule schedule) {
		SqlSession session = factory.openSession();

		int result = 0;

		try {
			result = session.insert(
					"com.jass.preate.dao.mybatis.ScheduleDao.addSchedule",
					schedule);

			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;
	}

	@Override
	public int changeSchedule(Schedule schedule) {
		SqlSession session = factory.openSession();

		int result = 0;

		try {
			result = session.update(
					"com.jass.preate.dao.mybatis.ScheduleDao.changeSchedule",
					schedule);

			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;
	}

	@Override
	public int removeSchedule(String code) {
		SqlSession session = factory.openSession();

		int result = 0;

		try {
			result = session.delete(
					"com.jass.preate.dao.mybatis.ScheduleDao.removeSchedule",
					code);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;
	}

	@Override
	public List<Schedule> getSchedules(String mid, String startDate,
			String endDate) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("mid", mid);
		params.put("startDate", startDate);
		params.put("endDate", endDate);

		SqlSession session = factory.openSession();
		List<Schedule> list = session.selectList("getSchedules", params);

		session.close();

		return list;
	}

	@Override
	public Schedule getSchedule(String code) {

		SqlSession session = factory.openSession();
		Schedule schedule = session.selectOne(
				"com.jass.preate.dao.ScheduleDao.getSchedule", code);
		session.close();

		return schedule;
	}

}
