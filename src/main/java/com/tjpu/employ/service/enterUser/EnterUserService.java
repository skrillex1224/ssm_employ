package com.tjpu.employ.service.enterUser;

import com.tjpu.employ.beans.Enterprise;
import com.tjpu.employ.beans.HireInfo;


public interface EnterUserService {
	void publishInfo(HireInfo hireInfo, Integer enterId);
	
	Boolean confirmIdentity(String enterEmail, String pwd);
	
	Enterprise selectEnterpriseWithHireInfo(String email);
	
	void  updateEnterpriseInfo(Enterprise enterprise);
	
	void deleteHireInfo(Integer hireId);

	HireInfo selectByHireIdWithJobSeeker(Integer hireId);

	void updateInterviewResult(String interviewResult, int seekerId);
}
