package com.jass.preate.vo;

import java.util.Date;
import java.util.List;

import com.jass.preate.dao.JoinRequestDao;
import com.jass.preate.dao.mybatis.MyBatisJoinRequestDao;

public class Project {
	private String code;
	private String title;
	private String writer;
	private String writerNick;
	private String writerName;
	private String content;
	private Date regDate;
	private Date deadline;
	private Date startDate;
	private Date endDate;
	private String classification;
	private String planningState;
	private int totalPeople;
	private int needDeveloper;
	private int needDesigner;
	private int budget;
	private boolean managingExp;
	private boolean meeting;
	private String area1_1;
	private String area1_2;
	private String area2_1;
	private String area2_2;
	private int joinCount;
	
	public List<JoinRequest> joinRequest;
	
	public List<JoinRequest> getJoinRequest() {
		return joinRequest;
	}
	public void setJoinRequest(List<JoinRequest> joinRequest) {
		this.joinRequest = joinRequest;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getWriterNick() {
		return writerNick;
	}
	public void setWriterNick(String writerNick) {
		this.writerNick = writerNick;
	}
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getDeadline() {
		return deadline;
	}
	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getClassification() {
		return classification;
	}
	public void setClassification(String classification) {
		this.classification = classification;
	}
	public String getPlanningState() {
		return planningState;
	}
	public void setPlanningState(String planningState) {
		this.planningState = planningState;
	}
	public int getTotalPeople() {
		return totalPeople;
	}
	public void setTotalPeople(int totalPeople) {
		this.totalPeople = totalPeople;
	}
	public int getNeedDeveloper() {
		return needDeveloper;
	}
	public void setNeedDeveloper(int needDeveloper) {
		this.needDeveloper = needDeveloper;
	}
	public int getNeedDesigner() {
		return needDesigner;
	}
	public void setNeedDesigner(int needDesigner) {
		this.needDesigner = needDesigner;
	}
	public int getBudget() {
		return budget;
	}
	public void setBudget(int budget) {
		this.budget = budget;
	}
	public boolean isManagingExp() {
		return managingExp;
	}
	public void setManagingExp(boolean managingExp) {
		this.managingExp = managingExp;
	}
	public boolean isMeeting() {
		return meeting;
	}
	public void setMeeting(boolean meeting) {
		this.meeting = meeting;
	}
	public String getArea1_1() {
		return area1_1;
	}
	public void setArea1_1(String area1_1) {
		this.area1_1 = area1_1;
	}
	public String getArea1_2() {
		return area1_2;
	}
	public void setArea1_2(String area1_2) {
		this.area1_2 = area1_2;
	}
	public String getArea2_1() {
		return area2_1;
	}
	public void setArea2_1(String area2_1) {
		this.area2_1 = area2_1;
	}
	public String getArea2_2() {
		return area2_2;
	}
	public void setArea2_2(String area2_2) {
		this.area2_2 = area2_2;
	}
	public int getJoinCount() {
		return joinCount;
	}
	public void setJoinCount(int joinCount) {
		this.joinCount = joinCount;
	}
	
}
