package com.tjpu.employ.beans;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

public class JobSeeker implements Serializable {
    private Integer seekerId;

    private String seekerName;

    private String seekerEmail;

    private String seekerPassword;

    private Integer seekerAge;

    private Integer seekerYears;

    private String seekerEduc;

    private String seekerLanguage;

    private Byte seekerGender;

    private byte[] seekerResume;
    
    //一对多,查询面试信息
    private List<SeekHireInfo> seekHireInfos;
    
    //多对多,招聘信息
    private List<HireInfo> hireInfos;
    
    public List<SeekHireInfo> getSeekHireInfos() {
        return seekHireInfos;
    }
    
    public void setSeekHireInfos(List<SeekHireInfo> seekHireInfos) {
        this.seekHireInfos = seekHireInfos;
    }
    
    public List<HireInfo> getHireInfos() {
        return hireInfos;
    }
    
    public void setHireInfos(List<HireInfo> hireInfos) {
        this.hireInfos = hireInfos;
    }
    
    public Integer getSeekerId() {
        return seekerId;
    }

    public void setSeekerId(Integer seekerId) {
        this.seekerId = seekerId;
    }

    public String getSeekerName() {
        return seekerName;
    }

    public void setSeekerName(String seekerName) {
        this.seekerName = seekerName == null ? null : seekerName.trim();
    }

    public String getSeekerEmail() {
        return seekerEmail;
    }

    public void setSeekerEmail(String seekerEmail) {
        this.seekerEmail = seekerEmail == null ? null : seekerEmail.trim();
    }

    public String getSeekerPassword() {
        return seekerPassword;
    }

    public void setSeekerPassword(String seekerPassword) {
        this.seekerPassword = seekerPassword == null ? null : seekerPassword.trim();
    }

    public Integer getSeekerAge() {
        return seekerAge;
    }

    public void setSeekerAge(Integer seekerAge) {
        this.seekerAge = seekerAge;
    }

    public Integer getSeekerYears() {
        return seekerYears;
    }

    public void setSeekerYears(Integer seekerYears) {
        this.seekerYears = seekerYears;
    }

    public String getSeekerEduc() {
        return seekerEduc;
    }

    public void setSeekerEduc(String seekerEduc) {
        this.seekerEduc = seekerEduc == null ? null : seekerEduc.trim();
    }

    public String getSeekerLanguage() {
        return seekerLanguage;
    }

    public void setSeekerLanguage(String seekerLanguage) {
        this.seekerLanguage = seekerLanguage == null ? null : seekerLanguage.trim();
    }

    public Byte getSeekerGender() {
        return seekerGender;
    }

    public void setSeekerGender(Byte seekerGender) {
        this.seekerGender = seekerGender;
    }

    public byte[] getSeekerResume() {
        return seekerResume;
    }
    
    
    public void setSeekerResume(byte[] seekerResume) {
        this.seekerResume = seekerResume;
    }
    
    @Override
    public String toString() {
        return "JobSeeker{" +
                "seekerId=" + seekerId +
                ", seekerName='" + seekerName + '\'' +
                ", seekerEmail='" + seekerEmail + '\'' +
                ", seekerPassword='" + seekerPassword + '\'' +
                ", seekerAge=" + seekerAge +
                ", seekerYears=" + seekerYears +
                ", seekerEduc='" + seekerEduc + '\'' +
                ", seekerLanguage='" + seekerLanguage + '\'' +
                ", seekerGender=" + seekerGender +
                ", seekerResume=" + Arrays.toString(seekerResume) +
                ", seekHireInfos=" + seekHireInfos +
                ", hireInfos=" + hireInfos +
                '}';
    }
}