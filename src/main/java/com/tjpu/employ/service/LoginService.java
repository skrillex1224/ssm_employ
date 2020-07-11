package com.tjpu.employ.service;


import com.tjpu.employ.beans.Enterprise;
import com.tjpu.employ.beans.JobSeeker;

public interface LoginService {
	void seekerRegistry(JobSeeker jobSeeker);

	void enterRegistry(Enterprise enterprise);

	//判断邮箱是否有人已经注册
	boolean findSeekerEmail(String seekerEmail);
	
}
