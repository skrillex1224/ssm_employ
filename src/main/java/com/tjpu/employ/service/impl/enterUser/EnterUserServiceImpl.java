package com.tjpu.employ.service.impl.enterUser;

import com.tjpu.employ.beans.Enterprise;
import com.tjpu.employ.beans.EnterpriseExample;
import com.tjpu.employ.beans.HireInfo;
import com.tjpu.employ.dao.AdminMapper;
import com.tjpu.employ.dao.EnterpriseMapper;
import com.tjpu.employ.dao.HireInfoMapper;
import com.tjpu.employ.dao.JobSeekerMapper;
import com.tjpu.employ.service.enterUser.EnterUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EnterUserServiceImpl implements EnterUserService {
	@Autowired
	EnterpriseMapper enterpriseMapper;
	@Autowired
	JobSeekerMapper jobSeekerMapper;
	@Autowired
	AdminMapper adminMapper;
	@Autowired
	HireInfoMapper hireInfoMapper;

	//发布招聘信息
	public void publishInfo(HireInfo hireInfo, Integer enterId){
		hireInfoMapper.insertWithEnterprise(hireInfo,enterId);
	}
	
	//删除招聘信息
	public void deleteHireInfo(Integer hireId){
		hireInfoMapper.deleteByPrimaryKey(hireId);
	}

	//通过hireId查询seeker的信息和相关招聘的进程信息
	public HireInfo selectByHireIdWithJobSeeker(Integer hireId) {
		HireInfo hireInfo = hireInfoMapper.selectByHireIdWithJobSeeker(hireId);
		return hireInfo;
	}

	//通过seekerId修改seekerHireInfo中的interview的值
	public void updateInterviewResult(String interviewResult, int seekerId) {
		jobSeekerMapper.updateInterviewResultBySeekerId(interviewResult, seekerId);
	}

	//更新企业信息
	public void  updateEnterpriseInfo(Enterprise enterprise){
		enterpriseMapper.updateByPrimaryKeySelective(enterprise);
	}
	
	//根据邮箱查询企业用户及企业的所有招聘信息
	public Enterprise selectEnterpriseWithHireInfo(String email){
		EnterpriseExample enterpriseExample = new EnterpriseExample();
		enterpriseExample.createCriteria().andEnterEmailEqualTo(email);
		Enterprise enterprise = enterpriseMapper.selectByExample(enterpriseExample).get(0);
		
		List<Enterprise> enterprises = enterpriseMapper.selectByNameWithHireInfo(enterprise.getEnterName());
		return enterprises.get(0);
	}
	
	//二次确认
	public Boolean confirmIdentity(String enterEmail,String pwd){
		EnterpriseExample enterpriseExample = new EnterpriseExample();
		enterpriseExample.createCriteria().andEnterEmailEqualTo(enterEmail);
		List<Enterprise> enterprises = enterpriseMapper.selectByExample(enterpriseExample);
		if(enterprises.size() == 0){
			return false;
		}
		
		return pwd.equals(enterprises.get(0).getEnterPassword());
		
	}
	
}























