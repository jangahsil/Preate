package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.Message;

public interface MessageDao {

	public Message getMessage(String code);
	
	public List<Message> getSendMessages(int page, String recipient);
	
	public List<Message> getReceiveMessages(int page, String writer);
	
	public int addMessage(Message message);
	
	public int removeMessage(String code);
	
	public int removeMessages(String[] codes);
	
}

