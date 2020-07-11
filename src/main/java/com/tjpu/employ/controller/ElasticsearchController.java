package com.tjpu.employ.controller;


import com.tjpu.employ.elasticsearch.bean.Search;
import com.tjpu.employ.elasticsearch.repository.SearchRepository;
import com.tjpu.employ.service.ElasticsearchService;
import org.elasticsearch.index.query.QueryStringQueryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
public class ElasticsearchController {
	@Autowired
	ElasticsearchService elasticsearchService;
	
	/***elasticsearch检索*/
	//主页搜索
	@RequestMapping("/elasticsearch")
	public String searchOccupationOrEnterprise(@RequestParam("searchParam") String searchParam,
		@RequestParam(value = "pn",defaultValue = "1") Integer pn,
	                                           Map<String, Object> map) {
		
	
		
		Page<Search> searches = elasticsearchService.contentMatch(searchParam, pn);
		map.put("search",searches);
		map.put("searchParam",searchParam);
		
		return "findJob/searchResult";
	}
	
}


