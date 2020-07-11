package com.tjpu.employ.controller.admin;

import com.tjpu.employ.beans.Enterprise;
import com.tjpu.employ.beans.HireInfo;
import com.tjpu.employ.beans.JobSeeker;
import com.tjpu.employ.service.admin.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

@Controller
public class AdminController {
	@Autowired
	AdminService adminService;
	
	@RequestMapping("/getAllUsers")
	public String getAllUser(@RequestParam(value = "email",defaultValue = "notExist")String dbName,
	                         @RequestParam(value = "password",defaultValue = "notExist")String dbPwd,
	                         Map<String,Object> map,
	                         HttpSession session){
		 if(adminService.confirmIdentity(dbName, dbPwd)){
		 	session.setAttribute("token","token");
		 }
		
		List<List<? extends Serializable>> allUsers = adminService.findAllUsers();
		map.put("allUsers",allUsers);
		return "forward:/index.jsp";
	}
	
	@RequestMapping("/banUser")
	public String banUser(@RequestParam("seekerId") Integer seekerId,@RequestParam("enterId") Integer enterId){
		adminService.banUser(seekerId,enterId);
		return "redirect:/getAllUsers";
	}
	
	//更新jobSeeker
	@RequestMapping("/adminUpdateSeeker")
	public String updateUser(JobSeeker jobSeeker){
		adminService.updateSeeker(jobSeeker);
		return "forward:/getAllUsers";
	}
	
	//更新企业信息
	@RequestMapping("/adminUpdateEnter")
	public String updateUser(Enterprise enterprise){
		adminService.updateEnterUser(enterprise);
		return "forward:/getAllUsers";
	}
	
	//修改招聘信息
	@RequestMapping("/modifyHireInfos")
	public String modifyHireInfo(HireInfo hireInfo){
		adminService.updateHireInfo(hireInfo);
		return "forward:/getAllUsers";
	}
	
}
