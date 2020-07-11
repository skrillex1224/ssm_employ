package com.tjpu.employ.controller;

import com.tjpu.employ.beans.JobSeeker;
import com.tjpu.employ.service.HomePageService;
import com.tjpu.employ.utils.FileDownLoadUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Map;

@Controller
public class HomePageController {
	@Autowired
	HomePageService homePageService;
	
	//求职者所有信息
	@RequestMapping("/toHomePage")
	public String getAllPersonalInformation(@RequestParam("email") String email
	, Map<String,Object> map, HttpServletRequest request) throws InterruptedException {
		JobSeeker jobSeeker = homePageService.queryAllPersonalInformation(email);
		//下载简历
		FileDownLoadUtils.downLoadFileTo(request.getRealPath("/")+"static\\" +
			"resumes\\resume_"+jobSeeker.getSeekerId()+".docx",jobSeeker.getSeekerResume());
		map.put("info",jobSeeker);
		return "personal/homePage";
	}


	
	
	//求职者修改信息
	@RequestMapping("/updatePersonalInfos")
	public String updatePersonalInfos(@ModelAttribute("jobSeeker") JobSeeker jobSeeker
		, @RequestParam("resume") MultipartFile upfile, Map<String,Object> map) throws IOException {
		
		jobSeeker.setSeekerResume(upfile.getBytes());
		
		homePageService.updatePersonalInfos(jobSeeker);
		map.put("msg","修改成功!");
		return "redirect:/toHomePage?email="+ jobSeeker.getSeekerEmail();
	}
	//更新查询
	@ModelAttribute
	public void updateModel(@RequestParam(value = "seekerId" ,required = false) Integer seekerId
	,Map<String,Object> map) throws InterruptedException {
		
		//非更新操作
		if(seekerId == null){
			return;
		}
		JobSeeker jobSeeker = homePageService.querySeekerById(seekerId);
		
		map.put("jobSeeker",jobSeeker);
	}
}












