package com.tjpu.employ.beans;

import java.io.Serializable;
import java.util.List;

public class Enterprise implements Serializable {
    private Integer enterId;
    
    private String enterName;
    
    private String enterEmail;
    
    private String enterUsername;
    
    private String enterType;
    
    private String enterInfo;
    
    private String enterLocation;
    
    private String enterPhone;
    
    private String enterPassword;
    
    
    
    private List<HireInfo> hireInfos;
    
    public List<HireInfo> getHireInfos() {
        return hireInfos;
    }
    
    public void setHireInfos(List<HireInfo> hireInfos) {
        this.hireInfos = hireInfos;
    }
    
    public Integer getEnterId() {
        return enterId;
    }

    public void setEnterId(Integer enterId) {
        this.enterId = enterId;
    }

    public String getEnterName() {
        return enterName;
    }

    public void setEnterName(String enterName) {
        this.enterName = enterName == null ? null : enterName.trim();
    }

    public String getEnterEmail() {
        return enterEmail;
    }

    public void setEnterEmail(String enterEmail) {
        this.enterEmail = enterEmail == null ? null : enterEmail.trim();
    }

    public String getEnterPassword() {
        return enterPassword;
    }

    public void setEnterPassword(String enterPassword) {
        this.enterPassword = enterPassword == null ? null : enterPassword.trim();
    }

    public String getEnterUsername() {
        return enterUsername;
    }

    public void setEnterUsername(String enterUsername) {
        this.enterUsername = enterUsername == null ? null : enterUsername.trim();
    }

    public String getEnterType() {
        return enterType;
    }

    public void setEnterType(String enterType) {
        this.enterType = enterType == null ? null : enterType.trim();
    }

    public String getEnterInfo() {
        return enterInfo;
    }

    public void setEnterInfo(String enterInfo) {
        this.enterInfo = enterInfo == null ? null : enterInfo.trim();
    }

    public String getEnterLocation() {
        return enterLocation;
    }

    public void setEnterLocation(String enterLocation) {
        this.enterLocation = enterLocation == null ? null : enterLocation.trim();
    }

    public String getEnterPhone() {
        return enterPhone;
    }

    public void setEnterPhone(String enterPhone) {
        this.enterPhone = enterPhone == null ? null : enterPhone.trim();
    }
    
    @Override
    public String toString() {
        return "Enterprise{" +
                "enterId=" + enterId +
                ", enterName='" + enterName + '\'' +
                ", enterEmail='" + enterEmail + '\'' +
                ", enterPassword='" + enterPassword + '\'' +
                ", enterUsername='" + enterUsername + '\'' +
                ", enterType='" + enterType + '\'' +
                ", enterInfo='" + enterInfo + '\'' +
                ", enterLocation='" + enterLocation + '\'' +
                ", enterPhone='" + enterPhone + '\'' +
                ", hireInfos=" + hireInfos +
                '}';
    }
}