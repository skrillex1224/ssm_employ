package com.tjpu.employ.utils.cache;

import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;

public class RedisCacheTransfer {
    RedisTemplate objectRedisTemplate;
    
    StringRedisTemplate stringRedisTemplate;
    
    StringRedisTemplate slaveStringRedisTemplate;
    
    RedisTemplate slaveObjectRedisTemplate;
    
    public RedisCacheTransfer(RedisTemplate objectRedisTemplate
                                ,StringRedisTemplate stringRedisTemplate,
                                 StringRedisTemplate slaveStringRedisTemplate
                                ,RedisTemplate slaveObjectRedisTemplate) {
        RedisCache.setMasterObjectTemplate(objectRedisTemplate);
        RedisCache.setMasterStringTempalte(stringRedisTemplate);
        RedisCache.setSlaveObjectTempalte(slaveObjectRedisTemplate);
        RedisCache.setSlaveStringTemplate(slaveStringRedisTemplate);
    }
    
    
}























