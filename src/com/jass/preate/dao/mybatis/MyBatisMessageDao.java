package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.MessageDao;
import com.jass.preate.vo.Message;

public class MyBatisMessageDao implements MessageDao {

	private SqlSession session;

	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public Message getMessage(String page) {

		return session.selectOne("com.jass.preate.dao.MessageDao.getMessage",
				page);
	}

	@Override
	public List<Message> getSendMessages(int page, String recipient) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("code", recipient);

		return session.selectList("getSendMessages", params);
	}

	@Override
	public List<Message> getReceiveMessages(int page, String writer) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("code", writer);

		return session.selectList("getReceiveMessages", params);
	}

	@Override
	public int addMessage(Message message) {

		return session.insert("com.jass.preate.dao.MessageDao.addMessage",
				message);
	}

	@Override
	public int removeMessage(String code) {

		return session.delete("com.jass.preate.dao.MessageDao.removeMessage",
				code);

	}

	@Override
	public int removeMessages(String[] codes) {

		int cnt = 0;
		int result = 0;

		for (int i = 0; i < codes.length; i++) {
			cnt = session.delete(
					"com.jass.preate.dao.MessageDao.removeMessage", codes[i]);
			result += cnt;
		}

		return result;
	}
}
