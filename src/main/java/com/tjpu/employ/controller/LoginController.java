package com.tjpu.employ.controller;

import com.tjpu.employ.beans.Enterprise;
import com.tjpu.employ.beans.JobSeeker;
import com.tjpu.employ.service.LoginService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Map;

@Controller
public class LoginController {
	@Autowired
	LoginService loginService;
	
	@RequestMapping("/login")
	public String seekerLogin(@RequestParam("email") String email,
	                    @RequestParam("password") String password,
					Map<String,Object> map){
		Subject currentUser = SecurityUtils.getSubject ();
		if(!currentUser.isAuthenticated()){
			UsernamePasswordToken token = new UsernamePasswordToken(email,password);
			//记住我
//			token.setRememberMe(true);
			
			try {
				currentUser.login(token);
			} catch (AuthenticationException e) {
//				认证失败
				map.put("msg","错误的用户名或密码");
				return "forward:/login.jsp";
			}
		}
		//成功页面
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("/unauthorized")
	public String unauthorized(){
		return "shiro/unanthorizedPage";
	}
	
	/**************************************************/
	@RequestMapping("/toSeekerRegistry")
	public String toSeekerRegistry() throws InterruptedException {
		
		return "registry/seekerRegistry";
	}
	
	@RequestMapping("/toEnterRegistry")
	public String toEnterRegistry() throws InterruptedException {
		
		return "registry/enterRegistry";
	}
	/**************************************************/
	@RequestMapping("/seekerRegistry")
	public String seekerRegistry(@RequestParam("resume") MultipartFile upfile, JobSeeker jobSeeker) throws IOException, InterruptedException {
		
		jobSeeker.setSeekerResume(upfile.getBytes());
		
		loginService.seekerRegistry(jobSeeker);
		
		return "redirect:/login.jsp";
	}
	
	@RequestMapping("/enterRegistry")
	public String enterRegistry(@RequestParam("icon")MultipartFile file, Enterprise enterprise, HttpServletRequest request) throws IOException {
		loginService.enterRegistry(enterprise);
		file.transferTo(new File(request.getRealPath("/") + "static/imgs/img_" + enterprise.getEnterId() + ".jpg"));
		return "redirect:/login.jsp";
	}

	@RequestMapping("emailVerify")
	@ResponseBody
	public boolean verify(String seekerEmail) throws InterruptedException {
		
		boolean result = loginService.findSeekerEmail(seekerEmail);
		return result;
	}
}
















