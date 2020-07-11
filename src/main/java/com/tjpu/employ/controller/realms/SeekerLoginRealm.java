package com.tjpu.employ.controller.realms;

import com.tjpu.employ.beans.*;
import com.tjpu.employ.dao.AdminMapper;
import com.tjpu.employ.dao.EnterpriseMapper;
import com.tjpu.employ.dao.JobSeekerMapper;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.HashSet;

@Component
public class SeekerLoginRealm extends AuthorizingRealm {
	@Autowired
	JobSeekerMapper jobSeekerMapper;
	@Autowired
	AdminMapper adminMapper;
	@Autowired
	EnterpriseMapper enterpriseMapper;
	//认证
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		UsernamePasswordToken usernamePasswordToken  = (UsernamePasswordToken) token;
		String email = usernamePasswordToken.getUsername ();
		
		if(email == null || email.length() == 0){
			throw new UnknownAccountException("用户不存在");
		}
		
		String password = null;
		
		try {
			JobSeekerExample jobSeekerExample = new JobSeekerExample();
			jobSeekerExample.createCriteria().andSeekerEmailEqualTo(email);
			JobSeeker jobSeeker  = jobSeekerMapper.selectByExample(jobSeekerExample).get(0);
			password = jobSeeker.getSeekerPassword();
			
		} catch (Exception e) {
			try {
				EnterpriseExample enterpriseExample = new EnterpriseExample();
				enterpriseExample.createCriteria().andEnterEmailEqualTo(email);
				Enterprise enterprise = enterpriseMapper.selectByExample(enterpriseExample).get(0);
				password = enterprise.getEnterPassword();
			} catch (Exception exception) {
				 AdminExample adminExample = new AdminExample();
				 adminExample.createCriteria().andDbNameEqualTo(email);
				Admin admin = adminMapper.selectByExample(adminExample).get(0);
				password = admin.getDbPassword();
			}
		}
		String realmName = getName();
		
		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo (email,password,realmName);
		
		return info;
	}
	
	//授权
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		String username = (String) principals.getPrimaryPrincipal();
		
		HashSet<String> roles = new HashSet<>();
		
		AdminExample adminExample = new AdminExample();
		adminExample.createCriteria().andDbNameEqualTo(username);
		EnterpriseExample enterpriseExample = new EnterpriseExample();
		enterpriseExample.createCriteria().andEnterEmailEqualTo(username);
		
		try {
			adminMapper.selectByExample(adminExample).get(0);
			roles.add("admin");
		} catch (Exception e) {
			try {
				enterpriseMapper.selectByExample(enterpriseExample).get(0);
				roles.add("enterprise");
			} catch (Exception ex) {
				roles.add("seeker");
			}
		}
		
		
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roles);
		
		
		return info;
	}
}
