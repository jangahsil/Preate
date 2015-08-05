package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.AdvertiseDao;
import com.jass.preate.dao.ContestDao;
import com.jass.preate.vo.Advertise;
import com.jass.preate.vo.Contest;

public class MyBatisAdvertiseDao implements AdvertiseDao {

	//SqlSessionFactory factory = new SqlJassSessionFactory().getSqlSessionFactory();

	@Autowired
	private SqlSession session;
	
	@Override
	public Advertise getAdvertise(String code) {

		//SqlSession session = factory.openSession();

		Advertise advertise = session.selectOne("com.jass.preate.dao.AdvertiseDao.getAdvertise", code);
		//session.close();
		return advertise;
	}

	@Override
	public List<Advertise> getAdvertises(int page) {
		return getAdvertises(page, "NAME", "");
	}

	@Override
	public List<Advertise> getAdvertises(int page, String field, String query) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("field", field);
		params.put("query", query);

		return session.selectList("com.jass.preate.dao.AdvertiseDao.getAdvertises", params);
	}

	@Override
	public int addAdvertise(Advertise advertise) {

		return session.insert("com.jass.preate.dao.AdvertiseDao.addAdvertise", advertise);
	}

	@Override
	public int changeAdvertise(Advertise advertise) {
		//SqlSession session = factory.openSession();
		int result = 0;

		try {
			result = session.update("com.jass.preate.dao.AdvertiseDao.changeAdvertise",advertise);
			//session.commit();
		} finally {
			//session.rollback();
			//session.close();
		}

		return result;
	}

	@Override
	public int removeAdvertise(String code) {
		//SqlSession session = factory.openSession();
		int result = 0;

		try {
			result = session.delete("com.jass.preate.dao.AdvertiseDao.removeAdvertise", code);
			//session.commit();
		} finally {
			//session.rollback();
			//session.close();
		}

		return result;
	}
}
