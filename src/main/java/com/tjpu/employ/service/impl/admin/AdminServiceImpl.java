package com.tjpu.employ.service.impl.admin;

import com.tjpu.employ.beans.*;
import com.tjpu.employ.dao.AdminMapper;
import com.tjpu.employ.dao.EnterpriseMapper;
import com.tjpu.employ.dao.HireInfoMapper;
import com.tjpu.employ.dao.JobSeekerMapper;
import com.tjpu.employ.service.admin.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	EnterpriseMapper enterpriseMapper;
	@Autowired
	JobSeekerMapper jobSeekerMapper;
	@Autowired
	AdminMapper adminMapper;
	@Autowired
	HireInfoMapper hireInfoMapper;
	
	//更新hireInfo
	public void updateHireInfo(HireInfo hireInfo){
		hireInfoMapper.updateByPrimaryKeySelective(hireInfo);
	}
	
	//更新seeker
	public void updateSeeker(JobSeeker jobSeeker ){
		jobSeekerMapper.updateByPrimaryKeySelective(jobSeeker);
	}
	
	//更新enterUser
	public void updateEnterUser(Enterprise enterprise){
		enterpriseMapper.updateByPrimaryKeySelective(enterprise);
	}
	
	//封禁用户
	public void banUser(Integer seekerId , Integer enterId){
		if(seekerId == -1){
			enterpriseMapper.deleteByPrimaryKey(enterId);
			return;
		}
		jobSeekerMapper.deleteByPrimaryKey(seekerId);
		
	}
	
	//二次确认
	public Boolean confirmIdentity(String dbName,String pwd){
		AdminExample adminExample = new AdminExample();
		adminExample.createCriteria().andDbNameEqualTo(dbName);
		List<Admin> admins = adminMapper.selectByExample(adminExample);
		if(admins.size() == 0){
			return false;
		}
		
		return pwd.equals(admins.get(0).getDbPassword());
		
	}
	
	//查询所有User
	public List<List<? extends Serializable>> findAllUsers(){
		List<Enterprise> enterprises = enterpriseMapper.selectByNameWithHireInfo(null);
		List<JobSeeker> jobSeekers = jobSeekerMapper.selectByExample(null);
		return Arrays.asList(enterprises,jobSeekers);
	}
	
	//返回所有人脸数据
	@Override
	public List<byte[]> selectAllFace() {
		List<Admin> list = adminMapper.selectByExampleWithBLOBs(null);
		List<byte[]> faces = new ArrayList<>();
		for (int i = 0; i < list.size(); i++) {
			faces.add(list.get(i).getDbFace());
		}
		return faces;
	}
}























