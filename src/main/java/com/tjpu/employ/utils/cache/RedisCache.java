package com.tjpu.employ.utils.cache;

import org.apache.ibatis.cache.Cache;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;

import java.util.concurrent.locks.ReadWriteLock;

// docker run -p 6379:6379
// -v /root/docker/myredis/data:/data
// -v /root/docker/myredis/conf/redis.conf:/usr/local/etc/redis/redis.conf
// -d redis redis-server /usr/local/etc/redis/redis.conf --appendonly yes

//172.17.0.1
public class RedisCache implements Cache {
	
	private static RedisTemplate masterObjectTemplate;
	
	private static  RedisTemplate slaveObjectTempalte;
	
	//这里没用到,因为都是操作对象的
	private static  StringRedisTemplate masterStringTempalte;
	
	private static  StringRedisTemplate slaveStringTemplate;
	
	private String id;
	
	private Integer timeout;//expire,这里没有设置
	
	private final ReadWriteLock readWriteLock = new DummyReadWriteLock();
	
	public static void setMasterObjectTemplate(RedisTemplate masterObjectTemplate) {
		RedisCache.masterObjectTemplate = masterObjectTemplate;
	}
	
	public static void setSlaveObjectTempalte(RedisTemplate slaveObjectTempalte) {
		RedisCache.slaveObjectTempalte = slaveObjectTempalte;
	}
	
	public static void setMasterStringTempalte(StringRedisTemplate masterStringTempalte) {
		RedisCache.masterStringTempalte = masterStringTempalte;
	}
	
	public static void setSlaveStringTemplate(StringRedisTemplate slaveStringTemplate) {
		RedisCache.slaveStringTemplate = slaveStringTemplate;
	}
	
	public RedisCache(final String id) {
		if (id == null) {
			throw new IllegalArgumentException("Cache instances require an ID");
		}
		this.id = id;
	}
	
	@Override
	public String getId() {
		return this.id;
	}
	
	@Override
	public void putObject(Object key, Object value) {
		final byte[] idBytes = id.getBytes();
		masterObjectTemplate.opsForHash().put(idBytes,key.toString().getBytes(),value);
		
	}
	
	@Override
	public Object getObject(Object key) {
		final byte[] idBytes = id.getBytes();
		return slaveObjectTempalte.opsForHash().get(idBytes,key.toString().getBytes());
	}
	
	@Override
	public Object removeObject(Object key) {
		final byte[] idBytes = id.getBytes();
		return masterObjectTemplate.opsForHash().delete(idBytes,key.toString().getBytes());
	}
	
	@Override
	public void clear() {
		final byte[] idBytes = id.getBytes();
		masterObjectTemplate.delete(slaveObjectTempalte.keys("*"));
		
	}
	
	@Override
	public int getSize() {
		final byte[] idBytes = id.getBytes();
		Integer size = slaveObjectTempalte.opsForHash().size(idBytes).intValue();
		return size;
	}
	
	@Override
	public ReadWriteLock getReadWriteLock() {
		return readWriteLock;
	}
	
	@Override
	public String toString() {
		return "Redis {" + id + "}";
	}
}
