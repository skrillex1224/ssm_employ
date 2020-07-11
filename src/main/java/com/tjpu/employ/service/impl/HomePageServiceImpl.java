package com.tjpu.employ.service.impl;

import com.tjpu.employ.beans.JobSeeker;
import com.tjpu.employ.dao.JobSeekerMapper;
import com.tjpu.employ.service.HomePageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HomePageServiceImpl implements HomePageService {
	@Autowired
	JobSeekerMapper jobSeekerMapper;
	
//	查询所有的个人信息
	public JobSeeker queryAllPersonalInformation(String email){
		return jobSeekerMapper.selectBySeekerEmail(email);
	}
	
	//根据id查询(ModelAttribute)
	public JobSeeker querySeekerById(Integer seekerId){
		JobSeeker jobSeeker = jobSeekerMapper.selectByPrimaryKey(seekerId);
		return jobSeeker;
	}
	
	public void  updatePersonalInfos(JobSeeker jobSeeker){
		jobSeekerMapper.updateByPrimaryKeyWithBLOBs(jobSeeker);
	}
	
}
