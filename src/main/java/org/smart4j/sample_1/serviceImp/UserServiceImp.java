package org.smart4j.sample_1.serviceImp;

import java.util.List;
import java.util.Map;

import org.smart4j.framework.dao.bean.Pager;
import org.smart4j.framework.orm.DataSet;
import org.smart4j.framework.tx.annotation.Service;
import org.smart4j.framework.util.CastUtil;
import org.smart4j.sample_1.entity.User;
import org.smart4j.sample_1.service.UserService;

@Service
public class UserServiceImp implements UserService {


	public boolean saveUser(Map<String, Object> fieldMap) {
		String username = CastUtil.castString(fieldMap.get("username"));
		String password = CastUtil.castString(fieldMap.get("password"));
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		return DataSet.insert(user);
	}

	public boolean deleteOne(int id) {
		return DataSet.delete(User.class, "id = ?", id);
	}

	public boolean updateUser(Map<String, Object> fieldMap) {
		String userId = CastUtil.castString(fieldMap.get("id"));
		User user = DataSet.select(User.class, "id = ?", userId);
		String username = CastUtil.castString(fieldMap.get("username"));
		String password = CastUtil.castString(fieldMap.get("password"));
		user.setUsername(username);
		user.setPassword(password);
		return DataSet.update(user);
	}

	public User findById(int id) {
		User user = DataSet.select(User.class, "id = ?", id);
		return user;
	}

	public Pager<User> getUserPager(int pageNumber, int pageSize) {
		String condition = "id > ?";
		String sort = "id desc";
		Object[] params = {0};
		long count = DataSet.selectCount(User.class, condition,params);
		List<User> userList = DataSet.selectListForPager(pageNumber, pageSize, User.class, condition, sort,params);
		return new Pager<User>(pageNumber, pageSize, count, userList);
	}
	
	public Pager<User> searchUser(String username){
		int pageNumber = 1;
		int pageSize = 10;
		System.out.println(username+"-----");
		String condition = "username = ?";
		String sort = "id desc";
		Object[] params = {username};
		long count = DataSet.selectCount(User.class, condition, params);
		List<User> userList = DataSet.selectListForPager(pageNumber, pageSize, User.class, condition, sort, params);
		return new Pager<User>(pageNumber,pageSize,count,userList);
	}

}
