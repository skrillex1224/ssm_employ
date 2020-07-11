package com.tjpu.employ.service;

import com.tjpu.employ.beans.Enterprise;
import com.tjpu.employ.beans.HireInfo;

import java.util.List;

public interface IndexTransportService {
	//关联信息
	void associateHireInfoAndSeeker(String seekerEmail, Integer hireId);
	//用职业查询所有招聘信息
	List<HireInfo> selectAllHireInfosWithOccupation(String occupation);
	//查询公司带招聘信息
	List<Enterprise> selectAllHireInfosWithEnterprise(String enterpriseName);
	//查询某个HireInfo的信息
	HireInfo queryHireInfoWithId(Integer hireId);
	
	List<HireInfo> filterHireInfosWithParam(String occupation, String education, Integer hireYears, Long hireSalary);
}
