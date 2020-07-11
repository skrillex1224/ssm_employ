package com.tjpu.employ.service.impl;

import com.tjpu.employ.beans.Enterprise;
import com.tjpu.employ.beans.HireInfo;
import com.tjpu.employ.beans.JobSeeker;
import com.tjpu.employ.beans.JobSeekerExample;
import com.tjpu.employ.dao.EnterpriseMapper;
import com.tjpu.employ.dao.HireInfoMapper;
import com.tjpu.employ.dao.JobSeekerMapper;
import com.tjpu.employ.dao.SeekHireInfoMapper;
import com.tjpu.employ.service.IndexTransportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IndexTransportServiceImpl implements IndexTransportService {
	@Autowired
	HireInfoMapper hireInfoMapper;
	
	@Autowired
	EnterpriseMapper enterpriseMapper;
	
	@Autowired
	SeekHireInfoMapper seekHireInfoMapper;
	
	@Autowired
	JobSeekerMapper jobSeekerMapper;
	
	//关联HireINFO和seeker
	public void associateHireInfoAndSeeker(String seekerEmail,Integer hireId){
		JobSeekerExample example  = new JobSeekerExample();
		example.createCriteria().andSeekerEmailEqualTo(seekerEmail);
		
		List<JobSeeker> jobSeekers = jobSeekerMapper.selectByExample(example);
		if(jobSeekers.size() == 0){
			return ;
		}
		JobSeeker jobSeeker = jobSeekers.get(0);
		
		seekHireInfoMapper.insert(jobSeeker.getSeekerId(),hireId);
	}
	
	//查询指定职业
	@Override
	public List<HireInfo> selectAllHireInfosWithOccupation(String occupation) {
		HireInfo hireInfo = new HireInfo();
		hireInfo.setHireOccupation(occupation);
		return hireInfoMapper.selectByDynamic(hireInfo);
	}
	
	//搜索
	public  List<Enterprise> selectAllHireInfosWithEnterprise(String enterpriseName){
		List<Enterprise> enterprises = enterpriseMapper.selectByNameWithHireInfo(enterpriseName);
		return enterprises;
	}
	
	//招聘信息过滤
	public List<HireInfo> filterHireInfosWithParam(String occupation, String education, Integer hireYears, Long hireSalary){
		HireInfo hireInfo = new HireInfo();
		hireInfo.setHireOccupation(occupation);
		hireInfo.setHireEducation(education);
		hireInfo.setHireYears(hireYears);
		hireInfo.setHireSalary(hireSalary);
		return hireInfoMapper.selectFilterBySalaryYearsAndEducation(hireInfo);
	}
	
	public HireInfo queryHireInfoWithId(Integer hireId){
		HireInfo hireInfo = hireInfoMapper.selectByIdWithEnterprise(hireId);
		return hireInfo;
	}
	
}
