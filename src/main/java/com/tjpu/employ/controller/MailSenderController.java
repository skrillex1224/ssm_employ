package com.tjpu.employ.controller;

import com.sun.mail.util.MailSSLSocketFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

@Controller
public class MailSenderController {
	@RequestMapping("/sendEmail")
	public String sendEmail(
		@RequestParam("email") final String email, //发件人邮箱572299072@qq.com
		@RequestParam("pwd") final String pwd, //发件人密码tmsyvdgmbumjbffa
		@RequestParam("receiver") String receiver, //接收人邮箱
		@RequestParam("content") String content, //内容
 		@RequestParam("subject") String subject //标题
	) throws Exception {
		
		//创建一个配置文件并保存
		Properties properties = new Properties();
		
		properties.setProperty("mail.host","smtp.qq.com");
		
		properties.setProperty("mail.transport.protocol","smtp");
		
		properties.setProperty("mail.smtp.auth","true");
		
		
		//QQ存在一个特性设置SSL加密
		MailSSLSocketFactory sf = new MailSSLSocketFactory();
		sf.setTrustAllHosts(true);
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.ssl.socketFactory", sf);
		
		//创建一个session对象
		Session session = Session.getDefaultInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(email,pwd);
			}
		});
		
		//开启debug模式
		session.setDebug(true);
		
		//获取连接对象
		Transport transport = session.getTransport();
		
		//连接服务器
		transport.connect("smtp.qq.com",email,pwd);
		
		//创建邮件对象
		MimeMessage mimeMessage = new MimeMessage(session);
		
		//邮件发送人
		mimeMessage.setFrom(new InternetAddress(email));
		
		//邮件接收人
		mimeMessage.setRecipient(Message.RecipientType.TO,new InternetAddress(receiver));
		
		//邮件标题
		mimeMessage.setSubject(subject);
		
		//邮件内容
		mimeMessage.setContent(content,"text/html;charset=UTF-8");
		
		//发送邮件
		transport.sendMessage(mimeMessage,mimeMessage.getAllRecipients());
		
		//关闭连接
		transport.close();
		return "redirect:/seeParticularInfo";
	}
}
