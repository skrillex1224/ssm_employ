package com.tjpu.employ.dao;

import com.tjpu.employ.beans.HireInfo;
import com.tjpu.employ.beans.HireInfoExample;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HireInfoMapper {
    
    //插入一条招聘信息并关联公司
    @Insert("insert into hire_info(hire_salary,hire_years,hire_education,hire_language" +
            ",hire_occupation,enter_id)" +
            "values(#{h.hireSalary},#{h.hireYears},#{h.hireEducation}," +
            "#{h.hireLanguage},#{h.hireOccupation},#{enterId})")
    void insertWithEnterprise(@Param("h") HireInfo hireInfo, @Param("enterId") Integer enterId);
    
    
    //根据Id查询公司和招聘信息
    HireInfo selectByIdWithEnterprise(Integer id);
    
    //动态sql查询招聘信息的公司,只能传入一个值
    List<HireInfo> selectByDynamic(HireInfo hireInfo);
    
    //查询当前招聘信息报名seeker的信息通过HireId
    HireInfo selectByHireIdWithJobSeeker(Integer hireId);
    
    //招聘页面过滤查询
    List<HireInfo> selectFilterBySalaryYearsAndEducation(HireInfo hireInfo);


//    -----------------------------------------
    long countByExample(HireInfoExample example);

    int deleteByExample(HireInfoExample example);

    int deleteByPrimaryKey(Integer hireId);

    int insert(HireInfo record);

    int insertSelective(HireInfo record);

    List<HireInfo> selectByExample(HireInfoExample example);

    HireInfo selectByPrimaryKey(Integer hireId);

    int updateByExampleSelective(@Param("record") HireInfo record, @Param("example") HireInfoExample example);

    int updateByExample(@Param("record") HireInfo record, @Param("example") HireInfoExample example);

    int updateByPrimaryKeySelective(HireInfo record);

    int updateByPrimaryKey(HireInfo record);
}