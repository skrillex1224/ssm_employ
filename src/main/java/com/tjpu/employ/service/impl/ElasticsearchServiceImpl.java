package com.tjpu.employ.service.impl;

import com.tjpu.employ.elasticsearch.bean.Search;
import com.tjpu.employ.service.ElasticsearchService;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

@Service
public class ElasticsearchServiceImpl implements ElasticsearchService {
//	@Autowired
//	SearchRepository searchRepository;
	
	
	@Override
	public Page<Search> contentMatch(String requestParam, Integer pn) {
//		QueryStringQueryBuilder builder = new QueryStringQueryBuilder("\""+requestParam+"\"");
//		int pageNo = pn -1;
//		int pageSize = 20;
//		PageRequest pageRequest = new PageRequest(pn-1,20);
//		Page<Search> search = searchRepository.search(builder, pageRequest);
//		return search;
		return null;
	}
	
}

