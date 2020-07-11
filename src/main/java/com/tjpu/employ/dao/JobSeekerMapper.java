package com.tjpu.employ.dao;

import com.tjpu.employ.beans.JobSeeker;
import com.tjpu.employ.beans.JobSeekerExample;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface JobSeekerMapper {
//    查询招聘信息和面试进度
    JobSeeker selectBySeekerEmail(@Param("email") String email);


    //通过SeekerId更新InterviewResult
    @Update("update seeker_hire_info set interview_result = #{interviewResult} where seeker_id=#{seekerId}")
    void updateInterviewResultBySeekerId(@Param("interviewResult") String interviewResult, @Param("seekerId") int seekerId);


    //-----------------------------------------
    long countByExample(JobSeekerExample example);

    int deleteByExample(JobSeekerExample example);

    int deleteByPrimaryKey(Integer seekerId);

    int insert(JobSeeker record);

    int insertSelective(JobSeeker record);

    List<JobSeeker> selectByExampleWithBLOBs(JobSeekerExample example);

    List<JobSeeker> selectByExample(JobSeekerExample example);

    JobSeeker selectByPrimaryKey(Integer seekerId);

    int updateByExampleSelective(@Param("record") JobSeeker record, @Param("example") JobSeekerExample example);

    int updateByExampleWithBLOBs(@Param("record") JobSeeker record, @Param("example") JobSeekerExample example);

    int updateByExample(@Param("record") JobSeeker record, @Param("example") JobSeekerExample example);

    int updateByPrimaryKeySelective(JobSeeker record);

    int updateByPrimaryKeyWithBLOBs(JobSeeker record);

    int updateByPrimaryKey(JobSeeker record);
}