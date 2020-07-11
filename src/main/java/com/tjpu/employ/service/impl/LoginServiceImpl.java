package com.tjpu.employ.service.impl;

import com.tjpu.employ.beans.Enterprise;
import com.tjpu.employ.beans.JobSeeker;
import com.tjpu.employ.beans.JobSeekerExample;
import com.tjpu.employ.dao.EnterpriseMapper;
import com.tjpu.employ.dao.JobSeekerMapper;
import com.tjpu.employ.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	JobSeekerMapper jobSeekerMapper;
	@Autowired
	EnterpriseMapper enterpriseMapper;
	
	@Override
	public void seekerRegistry(JobSeeker jobSeeker){
		jobSeekerMapper.insert(jobSeeker);
	}
	
	@Override
	public void enterRegistry(Enterprise enterprise) {
		enterpriseMapper.insert(enterprise);
	}

	@Override
	public boolean findSeekerEmail(String seekerEmail) {
		JobSeekerExample jobSeekerExample = new JobSeekerExample();
		JobSeekerExample.Criteria criteria = jobSeekerExample.createCriteria();
		criteria.andSeekerEmailEqualTo(seekerEmail);
		List<JobSeeker> jobSeekers = jobSeekerMapper.selectByExample(jobSeekerExample);

		if (jobSeekers.isEmpty()){
			return true;
		} else {
			return false;
		}
	}
}
