package com.tjpu.employ.service.admin;

import com.tjpu.employ.beans.Enterprise;
import com.tjpu.employ.beans.HireInfo;
import com.tjpu.employ.beans.JobSeeker;

import java.io.Serializable;
import java.util.List;

public interface AdminService {
	List<List<? extends Serializable>> findAllUsers();
	
	Boolean confirmIdentity(String dbName, String pwd);
	
	void banUser(Integer seekerId, Integer enterId);
	
	void updateSeeker(JobSeeker jobSeeker);
	
	void updateEnterUser(Enterprise enterprise);
	
	void updateHireInfo(HireInfo hireInfo);
	
	List<byte[]> selectAllFace();
	
}
