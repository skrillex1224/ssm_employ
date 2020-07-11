package com.tjpu.employ.controller.enterUser;

import com.tjpu.employ.beans.Enterprise;
import com.tjpu.employ.beans.HireInfo;
import com.tjpu.employ.beans.JobSeeker;
import com.tjpu.employ.service.HomePageService;
import com.tjpu.employ.service.enterUser.EnterUserService;
import com.tjpu.employ.utils.FileDownLoadUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Controller
public class EnterUserController {
	@Autowired
	EnterUserService enterUserService;
    @Autowired
    HomePageService homePageService;

	//根据hire_id查找seekerHireInfo(面试信息) 加上index(企业页面)上的简历下载
	@RequestMapping("findSeekerHireInfoByHireId")
	public String findSeekerHireInfoByHireId(Integer hireId, HttpServletRequest request){
		HireInfo hireInfo = enterUserService.selectByHireIdWithJobSeeker(hireId);
		request.setAttribute("hireInfo",hireInfo);
        System.out.println(hireInfo.toString()+"-------------------------------------");
        List<JobSeeker> jobSeekers = hireInfo.getJobSeekers();
//        for (JobSeeker jobSeeker:jobSeekers) {
//            FileDownLoadUtils.downLoadFileTo(request.getSession().getServletContext().getRealPath("/")+"static\\" +
//                    "resumes\\resume_"+jobSeeker.getSeekerId()+".docx",jobSeeker.getSeekerResume());
//        }
		for (int i = 0; i < jobSeekers.size(); i++) {
			FileDownLoadUtils.downLoadFileTo(request.getRealPath("/")+"static\\" +
					"resumes\\resume_"+ jobSeekers.get(i).getSeekerId()+".docx", jobSeekers.get(i).getSeekerResume());
		}
		return "forward:/showMyEnter";
	}

	//修改面试者的面试结果
	@RequestMapping("updateInterviewResult")
	public String updateInterviewResult(String interviewResult,int seekerId){
		enterUserService.updateInterviewResult(interviewResult, seekerId);
		return "redirect:/showMyEnter";
	}

	//发布招聘信息publishHireInfo
	@RequestMapping("/publishHireInfo")
	public String publishHireInfo(HireInfo hireInfo, @RequestParam("enterId")Integer enterId){
		
		enterUserService.publishInfo(hireInfo,enterId);
		return "redirect:/showMyEnter";
	}
	
	
	//删除招聘信息
	@RequestMapping("/deleteHireInfo/{id}")
	public String deleteHireInfo(@PathVariable("id") Integer hireId){
		enterUserService.deleteHireInfo(hireId);
		return "redirect:/showMyEnter";
	}
	
	//更新企业图标
	@RequestMapping("/updateIcon")
	public String updateIcon(@RequestParam("icon") MultipartFile file, @RequestParam("enterId")Integer enterId
	, HttpServletRequest request)  throws IOException{
		//处理文件
		file.transferTo(new File(request.getRealPath("/") +"static\\imgs\\img_"+enterId+".jpg"));
		return "redirect:/showMyEnter";
	}
	
	//更新企业信息
	@RequestMapping("/updateEnterprise")
	public String updateEnterpriseInfos(Enterprise enterprise,  HttpSession session) {
		enterprise.setEnterId((Integer) session.getAttribute("enterId"));
		enterUserService.updateEnterpriseInfo(enterprise);
		
		return "redirect:/showMyEnter";
	}
	
	
	//二次确认
	@RequestMapping("/showMyEnter")
	public String showMyEnter(@RequestParam(value = "email",defaultValue = "notExist")String email,
	                         @RequestParam(value = "password",defaultValue = "notExist")String pwd,
	                         Map<String,Object> map,
	                         HttpSession session){
		if(email.equals("notExist")){
			email = (String) session.getAttribute("email");
			if(email == null){
				 return "redirect:/index.jsp";
			}
		}else{
			session.setAttribute("email",email);
		}
		
		if(enterUserService.confirmIdentity(email, pwd)){
			session.setAttribute("token","took");
		}
		
		Enterprise enterprise = enterUserService.selectEnterpriseWithHireInfo(email);
		session.setAttribute("enterId",enterprise.getEnterId());
		map.put("enterprise",enterprise);
		
		return "forward:/index.jsp";
	}
}
