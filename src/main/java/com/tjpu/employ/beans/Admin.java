package com.tjpu.employ.beans;

import java.io.Serializable;

public class Admin implements Serializable {
    private Integer dbId;

    private String dbName;

    private String dbPassword;

    private byte[] dbFace;

    public Integer getDbId() {
        return dbId;
    }

    public void setDbId(Integer dbId) {
        this.dbId = dbId;
    }

    public String getDbName() {
        return dbName;
    }

    public void setDbName(String dbName) {
        this.dbName = dbName == null ? null : dbName.trim();
    }

    public String getDbPassword() {
        return dbPassword;
    }

    public void setDbPassword(String dbPassword) {
        this.dbPassword = dbPassword == null ? null : dbPassword.trim();
    }

    public byte[] getDbFace() {
        return dbFace;
    }

    public void setDbFace(byte[] dbFace) {
        this.dbFace = dbFace;
    }
}