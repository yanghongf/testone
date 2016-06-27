package org.smart4j.sample_1.service;

import java.util.Map;

import org.smart4j.framework.dao.bean.Pager;
import org.smart4j.sample_1.entity.User;

public interface UserService {

	public User findById(int id);

	public boolean saveUser(Map<String, Object> fieldMap);

	public boolean deleteOne(int id);

	public boolean updateUser(Map<String, Object> fieldMap);
	
	public Pager<User> getUserPager(int pageNumber, int pageSize);
	
	public Pager<User> searchUser(String username);

}
