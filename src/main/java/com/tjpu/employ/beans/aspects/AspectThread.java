package com.tjpu.employ.beans.aspects;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class AspectThread {
	@Before("execution(* com.tjpu.employ.service..*.*(..)) ")
	public void sleepThread() throws InterruptedException {
		//模拟网络
		Thread.sleep(400);
	}
}
