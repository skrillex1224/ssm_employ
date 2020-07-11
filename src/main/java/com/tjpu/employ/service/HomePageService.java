package com.tjpu.employ.service;

import com.tjpu.employ.beans.JobSeeker;

public interface HomePageService {
	
	JobSeeker querySeekerById(Integer seekerId);
	
	JobSeeker queryAllPersonalInformation(String email);
	
	void  updatePersonalInfos(JobSeeker jobSeeker);
	
}
