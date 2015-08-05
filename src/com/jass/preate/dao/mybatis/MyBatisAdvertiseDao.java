package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.AdvertiseDao;
import com.jass.preate.vo.Advertise;

public class MyBatisAdvertiseDao implements AdvertiseDao {

	private SqlSession session;
	
	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public Advertise getAdvertise(String code) {

		return session.selectOne("com.jass.preate.dao.AdvertiseDao.getAdvertise", code);
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

		return session.update("com.jass.preate.dao.AdvertiseDao.changeAdvertise", advertise);
	}

	@Override
	public int removeAdvertise(String code) {

		return session.delete("com.jass.preate.dao.AdvertiseDao.removeAdvertise", code);
	}
}
