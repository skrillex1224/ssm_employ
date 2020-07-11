package com.tjpu.employ.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HeaderController {
	//去工作页面
	@RequestMapping("/findJob")
	public String findJob(HttpServletRequest request){
		return "redirect:/toOccupationPage";
	}
	
	//去企业页面
	@RequestMapping("/enterprise")
	public String enterprisePage()  {
		return "redirect:/searchAllEnterprises";
	}
	
	//去咨询页面
	@RequestMapping("/infos")
	public String toInfos(){
		
		return "infos/infoPage";
	}
	
}
