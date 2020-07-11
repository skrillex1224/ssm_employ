package com.tjpu.employ.dao;

import com.tjpu.employ.beans.Enterprise;
import com.tjpu.employ.beans.EnterpriseExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EnterpriseMapper {
    //企业By招聘信息
    List<Enterprise> selectByNameWithHireInfo(@Param("enterName") String enterName);

    
//    --------------------------------
    long countByExample(EnterpriseExample example);

    int deleteByExample(EnterpriseExample example);

    int deleteByPrimaryKey(Integer enterId);

    int insert(Enterprise record);

    int insertSelective(Enterprise record);

    List<Enterprise> selectByExample(EnterpriseExample example);

    Enterprise selectByPrimaryKey(Integer enterId);

    int updateByExampleSelective(@Param("record") Enterprise record, @Param("example") EnterpriseExample example);

    int updateByExample(@Param("record") Enterprise record, @Param("example") EnterpriseExample example);

    int updateByPrimaryKeySelective(Enterprise record);

    int updateByPrimaryKey(Enterprise record);
}