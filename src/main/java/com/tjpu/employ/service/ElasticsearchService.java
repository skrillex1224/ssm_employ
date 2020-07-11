package com.tjpu.employ.service;

import com.tjpu.employ.elasticsearch.bean.Search;
import org.springframework.data.domain.Page;

public interface ElasticsearchService {
	Page<Search> contentMatch(String requestParam, Integer pn);
}
