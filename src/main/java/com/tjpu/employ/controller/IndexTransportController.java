package com.tjpu.employ.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tjpu.employ.beans.HireInfo;
import com.tjpu.employ.service.IndexTransportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
public class IndexTransportController {
	@Autowired
	IndexTransportService indexTransportService;
	
	
	//主页表格
//	@RequestMapping("/toOccupationPage")
//	public String toOccupationPage(@RequestParam(value = "hireOccupation" ,defaultValue = "Java")String occupation,
//	                               @RequestParam(value = "pn",defaultValue = "1")Integer pn,
//	Map<String,Object> map) throws InterruptedException {
//
//		//分页
//		PageHelper.startPage(pn,8);
//		List<HireInfo> hireInfos = indexTransportService.selectAllHireInfosWithOccupation(occupation);
//		map.put("hireInfos",hireInfos);
//		PageInfo pageInfo = new PageInfo(hireInfos);
//		map.put("pageInfo",pageInfo);
//		return "findJob/occupation";
//	}
	//按条件筛选职业信息
	@RequestMapping({"/filterOccupation","/toOccupationPage"})
	public String filterOccupation(@RequestParam(value = "hireOccupation" ,defaultValue = "全栈工程师")String occupation,
	                                 @RequestParam(value = "hireEducation" ,defaultValue = "无要求")String education,
	                                 @RequestParam(value = "hireYears" ,defaultValue = "0")Integer hireYears,
	                                 @RequestParam(value = "hireSalary" ,defaultValue = "0")Long hireSalary,
	                                 @RequestParam(value = "pn" ,defaultValue = "1") Integer pn,
	                                 Map<String,Object> map)  {
		
		//分页
		PageHelper.startPage(pn,8);
		List<HireInfo> hireInfos = indexTransportService.filterHireInfosWithParam(occupation,education,hireYears,hireSalary);
		map.put("hireInfos",hireInfos);
		PageInfo pageInfo = new PageInfo(hireInfos);
		map.put("pageInfo",pageInfo);
		
		//表单回显
		map.put("hireEducation",education);
		map.put("hireYears",hireYears);
		map.put("hireSalary",hireSalary);
		
		return "findJob/occupation";
	}
	
	//点击职业查看详细信息
	@RequestMapping("/seeParticularInfo")
	public String seeParticularInfo(Integer hireId,Map<String,Object> map){
		HireInfo hireInfo = indexTransportService.queryHireInfoWithId(hireId);
		map.put("hireInfo",hireInfo);
		return "findJob/occupationPatiPage";
	}
	
	//关联seeker和对应的HireInfo
	@RequestMapping("/submitMyInfo")
	public String submitMyInfo(@RequestParam("seekerEmail")String seekerEmail,
	                               @RequestParam("hireId")Integer hireId){
		indexTransportService.associateHireInfoAndSeeker(seekerEmail,hireId);
		
		return "forward:/seeParticularInfo?hireId="+hireId;
	}
	
}
