package com.tjpu.employ.elasticsearch.bean;

import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

import java.io.Serializable;

@Document(indexName = "ssm_employ",type = "search")
public class Search implements Serializable {
	
	@Id
	private String id;
	
	@Field(type = FieldType.String,analyzer = "ik_smart")
	private String enterName;
	
	@Field(type = FieldType.String,analyzer = "ik_smart")
	private String enterEmail;
	
	@Field(type = FieldType.String,analyzer = "ik_smart")
	private String enterUsername;
	
	@Field(type = FieldType.String,analyzer = "ik_smart")
	private String enterType;
	
	@Field(type = FieldType.String,analyzer = "ik_smart")
	private String enterInfo;
	
	@Field(type = FieldType.String,analyzer = "ik_smart")
	private String enterLocation;
	
	@Field(type = FieldType.String,analyzer = "ik_smart")
	private String enterPhone;
	
	@Field(type = FieldType.String,analyzer = "ik_smart")
	private String enterPassword;
	
	@Field(type = FieldType.Long)
	private Long hireSalary;
	
	@Field(type = FieldType.Integer)
	private Integer hireYears;
	
	@Field(type = FieldType.String,analyzer = "ik_smart")
	private String hireEducation;
	
	@Field(type = FieldType.String,analyzer = "ik_smart")
	private String hireLanguage;
	
	@Field(type = FieldType.String,analyzer = "ik_smart")
	private String hireOccupation;
	
	
	@Override
	public String toString() {
		return "Search{" +
			"id='" + id + '\'' +
			", enterName='" + enterName + '\'' +
			", enterEmail='" + enterEmail + '\'' +
			", enterUsername='" + enterUsername + '\'' +
			", enterType='" + enterType + '\'' +
			", enterInfo='" + enterInfo + '\'' +
			", enterLocation='" + enterLocation + '\'' +
			", enterPhone='" + enterPhone + '\'' +
			", enterPassword='" + enterPassword + '\'' +
			", hireSalary=" + hireSalary +
			", hireYears=" + hireYears +
			", hireEducation='" + hireEducation + '\'' +
			", hireLanguage='" + hireLanguage + '\'' +
			", hireOccupation='" + hireOccupation + '\'' +
			'}';
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getEnterName() {
		return enterName;
	}
	
	public void setEnterName(String enterName) {
		this.enterName = enterName;
	}
	
	public String getEnterEmail() {
		return enterEmail;
	}
	
	public void setEnterEmail(String enterEmail) {
		this.enterEmail = enterEmail;
	}
	
	public String getEnterUsername() {
		return enterUsername;
	}
	
	public void setEnterUsername(String enterUsername) {
		this.enterUsername = enterUsername;
	}
	
	public String getEnterType() {
		return enterType;
	}
	
	public void setEnterType(String enterType) {
		this.enterType = enterType;
	}
	
	public String getEnterInfo() {
		return enterInfo;
	}
	
	public void setEnterInfo(String enterInfo) {
		this.enterInfo = enterInfo;
	}
	
	public String getEnterLocation() {
		return enterLocation;
	}
	
	public void setEnterLocation(String enterLocation) {
		this.enterLocation = enterLocation;
	}
	
	public String getEnterPhone() {
		return enterPhone;
	}
	
	public void setEnterPhone(String enterPhone) {
		this.enterPhone = enterPhone;
	}
	
	public String getEnterPassword() {
		return enterPassword;
	}
	
	public void setEnterPassword(String enterPassword) {
		this.enterPassword = enterPassword;
	}
	
	public Long getHireSalary() {
		return hireSalary;
	}
	
	public void setHireSalary(Long hireSalary) {
		this.hireSalary = hireSalary;
	}
	
	public Integer getHireYears() {
		return hireYears;
	}
	
	public void setHireYears(Integer hireYears) {
		this.hireYears = hireYears;
	}
	
	public String getHireEducation() {
		return hireEducation;
	}
	
	public void setHireEducation(String hireEducation) {
		this.hireEducation = hireEducation;
	}
	
	public String getHireLanguage() {
		return hireLanguage;
	}
	
	public void setHireLanguage(String hireLanguage) {
		this.hireLanguage = hireLanguage;
	}
	
	public String getHireOccupation() {
		return hireOccupation;
	}
	
	public void setHireOccupation(String hireOccupation) {
		this.hireOccupation = hireOccupation;
	}
}
