package com.tjpu.employ.beans;

import java.io.Serializable;
import java.util.List;

public class HireInfo implements Serializable {
    private Integer hireId;
    private Long hireSalary;
    
    private Integer hireYears;
    
    private String hireEducation;
    
    private String hireLanguage;
    
    private String hireOccupation;
    
    private Integer enterId;
 
    //多对多
    private List<SeekHireInfo> seekHireInfos;
    
    //一对多
    private Enterprise enterprise;
    
    //多对多
    private List<JobSeeker> jobSeekers;
    
    public Integer getEnterId() {
        return enterId;
    }
    
    public void setEnterId(Integer enterId) {
        this.enterId = enterId;
    }
    
    
    public List<SeekHireInfo> getSeekHireInfos() {
        return seekHireInfos;
    }
    
    public void setSeekHireInfos(List<SeekHireInfo> seekHireInfos) {
        this.seekHireInfos = seekHireInfos;
    }
    
    public List<JobSeeker> getJobSeekers() {
        return jobSeekers;
    }
    
    
    public Enterprise getEnterprise() {
        return enterprise;
    }
    
    public void setEnterprise(Enterprise enterprise) {
        this.enterprise = enterprise;
    }
    
    public void setJobSeekers(List<JobSeeker> jobSeekers) {
        this.jobSeekers = jobSeekers;
    }
    
    public Integer getHireId() {
        return hireId;
    }

    public void setHireId(Integer hireId) {
        this.hireId = hireId;
    }

    public Long getHireSalary() {
        return hireSalary;
    }

    public void setHireSalary(Long hireSalary) {
        this.hireSalary = hireSalary;
    }

    public Integer getHireYears() {
        return hireYears;
    }

    public void setHireYears(Integer hireYears) {
        this.hireYears = hireYears;
    }

    public String getHireEducation() {
        return hireEducation;
    }

    public void setHireEducation(String hireEducation) {
        this.hireEducation = hireEducation == null ? null : hireEducation.trim();
    }

    public String getHireLanguage() {
        return hireLanguage;
    }

    public void setHireLanguage(String hireLanguage) {
        this.hireLanguage = hireLanguage == null ? null : hireLanguage.trim();
    }
    
    public String getHireOccupation() {
        return hireOccupation;
    }
    
    public void setHireOccupation(String hireOccupation) {
        this.hireOccupation = hireOccupation;
    }
    
    @Override
    public String toString() {
        return "HireInfo{" +
                "hireId=" + hireId +
                ", hireSalary=" + hireSalary +
                ", hireYears=" + hireYears +
                ", hireEducation='" + hireEducation + '\'' +
                ", hireLanguage='" + hireLanguage + '\'' +
                ", hireOccupation='" + hireOccupation + '\'' +
                ", enterprise=" + enterprise +
                ", jobSeekers=" + jobSeekers +
                '}';
    }
}