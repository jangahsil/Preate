package com.jass.preate.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.NeedFieldDao;
import com.jass.preate.vo.NeedField;

public class MyBatisNeedFieldDao implements NeedFieldDao {

	private SqlSession session;
	
	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<NeedField> getNeedFields(String projectCode) {
		
		return session.selectList("getNeedFields", projectCode);
	}

	@Override
	public int addNeedField(NeedField needField) {
				
		return session.insert("com.jass.preate.dao.NeedFieldDao.addNeedField", needField);
	}

	@Override
	public int removeNeedField(String mid) {
				
		return session.delete("com.jass.preate.dao.NeedFieldDao.removeNeedField", mid);
	}

}
