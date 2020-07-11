package com.tjpu.employ.service.impl;

import com.tjpu.employ.beans.Enterprise;
import com.tjpu.employ.beans.EnterpriseExample;
import com.tjpu.employ.dao.EnterpriseMapper;
import com.tjpu.employ.service.IndexEnterpriseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IndexEnterpriseServiceImpl implements IndexEnterpriseService {
    @Autowired
    EnterpriseMapper enterpriseMapper;

    /**根据企业名字查询企业With招聘信息
     * 页面跳转时候用:
     * map的key是enterprise*/
    public Enterprise selectByEnterNameWithHireInfo(String enterName){
        List<Enterprise> enterprises = enterpriseMapper.selectByNameWithHireInfo(enterName);
        if(enterprises.size() > 0){
            return enterprises.get(0);
        }
        return new Enterprise();
    }
    
    
    
    @Override
    public List<Enterprise> searchEnterpriseByLocation(String location) {
        EnterpriseExample enterpriseExample = new EnterpriseExample();
        EnterpriseExample.Criteria criteria = enterpriseExample.createCriteria();
        criteria.andEnterLocationEqualTo(location);

        List<Enterprise> enterprise = enterpriseMapper.selectByExample(enterpriseExample);
        return enterprise;
    }

    @Override
    public List<Enterprise> searchEnterpriseByType(String type) {
        EnterpriseExample enterpriseExample = new EnterpriseExample();
        EnterpriseExample.Criteria criteria = enterpriseExample.createCriteria();
        criteria.andEnterTypeEqualTo(type);

        List<Enterprise> enterprises = enterpriseMapper.selectByExample(enterpriseExample);
        return enterprises;
    }

    @Override
    public List<Enterprise> searchEnterByLocationAndType(String location, String type) {
        EnterpriseExample enterpriseExample = new EnterpriseExample();
        EnterpriseExample.Criteria criteria = enterpriseExample.createCriteria();
        criteria.andEnterTypeEqualTo(type).andEnterLocationEqualTo(location);

        List<Enterprise> enterprises = enterpriseMapper.selectByExample(enterpriseExample);
        return enterprises;
    }

    @Override
    public List<Enterprise> searchAllEnterprises() {
        List<Enterprise> enterprises = enterpriseMapper.selectByExample(null);
        return enterprises;
    }
}
