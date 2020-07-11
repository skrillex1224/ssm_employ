package com.tjpu.employ.beans;

import java.io.Serializable;
import java.util.Date;

public class SeekHireInfo implements Serializable {
	private Integer seekerId;
	private Integer hireId;
	private String processStatus;
	private Date orderInterviewTime;
	private String interviewResult;
	
	public Integer getSeekerId() {
		return seekerId;
	}
	
	public void setSeekerId(Integer seekerId) {
		this.seekerId = seekerId;
	}
	
	public Integer getHireId() {
		return hireId;
	}
	
	public void setHireId(Integer hireId) {
		this.hireId = hireId;
	}
	
	public String getProcessStatus() {
		return processStatus;
	}
	
	public void setProcessStatus(String processStatus) {
		this.processStatus = processStatus;
	}
	
	public Date getOrderInterviewTime() {
		return orderInterviewTime;
	}
	
	public void setOrderInterviewTime(Date orderInterviewTime) {
		this.orderInterviewTime = orderInterviewTime;
	}
	
	public String getInterviewResult() {
		return interviewResult;
	}
	
	public void setInterviewResult(String interviewResult) {
		this.interviewResult = interviewResult;
	}
}
