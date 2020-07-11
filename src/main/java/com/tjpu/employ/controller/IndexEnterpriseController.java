package com.tjpu.employ.controller;

import com.tjpu.employ.beans.Enterprise;
import com.tjpu.employ.service.IndexEnterpriseService;
import com.tjpu.employ.service.IndexTransportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
public class IndexEnterpriseController {
    @Autowired
    IndexEnterpriseService indexEnterpriseService;
    @Autowired
    IndexTransportService indexTransportService;

    @RequestMapping("searchEnterpriseByLocation")
    public String searchEnterpriseByLocation(String location, HttpServletRequest request){
        List<Enterprise> enterprises = indexEnterpriseService.searchEnterpriseByLocation(location);
        request.setAttribute("enterprise",enterprises);
        System.out.println(enterprises);
        return "findJob/enterprise";
    }

    @RequestMapping("searchEnterpriseByType")
    public String searchEnterpriseByType(String type,HttpServletRequest request){
        List<Enterprise> enterprises = indexEnterpriseService.searchEnterpriseByType(type);
        request.setAttribute("enterprise",enterprises);
        return "findJob/enterprise";
    }
    //获取所有enterprise
    @RequestMapping("searchAllEnterprises")
    public String searchAllEnterprises(HttpServletRequest request){
        List<Enterprise> enterprises = indexEnterpriseService.searchAllEnterprises();
        request.setAttribute("enterprise",enterprises);
        return "findJob/enterprise";
    }

    @RequestMapping("searchEnterpriseByLocationAndType")
    public String searchEnterpriseByLocationAndType(String location,String type,HttpServletRequest request){
        List<Enterprise> enterprises = indexEnterpriseService.searchEnterByLocationAndType(location, type);
        request.setAttribute("enterprise",enterprises);
        return "findJob/enterprise";
    }

    //根据公司名查询公司的招聘信息和公司信息
    @RequestMapping("searchHireInfoByEnterName")
    public String searchHireInfoByEnterName(String enterName,HttpServletRequest request){
        List<Enterprise> enterprises = indexTransportService.selectAllHireInfosWithEnterprise(enterName);
        request.setAttribute("enterprise",enterprises);
        System.out.println(enterprises.toString()+"------------------------------");
        return "findJob/enterprisePatiPage";
    }

}
