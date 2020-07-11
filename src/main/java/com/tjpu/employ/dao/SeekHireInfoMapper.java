package com.tjpu.employ.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface SeekHireInfoMapper {
	//插入关联信息
	@Insert("insert into seeker_hire_info(seeker_id,hire_id) values(#{seekerId},#{hireId})")
	void insert(@Param("seekerId") Integer seekerId, @Param("hireId") Integer hireId);
}
