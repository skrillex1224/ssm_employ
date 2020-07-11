package com.tjpu.employ.elasticsearch.repository;

import com.tjpu.employ.elasticsearch.bean.Search;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

public interface SearchRepository extends ElasticsearchRepository<Search,String> {

}
