package com.tjpu.employ.service;

import com.tjpu.employ.beans.Enterprise;

import java.util.List;

public interface IndexEnterpriseService {
    public List<Enterprise> searchEnterpriseByLocation(String location);

    public List<Enterprise> searchEnterpriseByType(String type);

    public List<Enterprise> searchEnterByLocationAndType(String location, String type);

    public List<Enterprise> searchAllEnterprises();
    
    Enterprise selectByEnterNameWithHireInfo(String enterName);
}
