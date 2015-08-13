package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.ScrapDao;
import com.jass.preate.vo.JoinRequest;
import com.jass.preate.vo.Project;
import com.jass.preate.vo.Scrap;

public class MyBatisScrapDao implements ScrapDao {

	private SqlSession session;

	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public int addScrap(Scrap scrap) {

		return session.insert("com.jass.preate.dao.ScrapDao.addScrap", scrap);
	}

	@Override
	public int removeScrap(String code) {

		return session.delete("com.jass.preate.dao.ScrapDao.removeScrap", code);
	}

	@Override
		public List<String> getProjectCodes(String mid) {
			return getProjectCodes(mid);
		}


}