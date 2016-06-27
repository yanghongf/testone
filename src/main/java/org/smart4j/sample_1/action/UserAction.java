package org.smart4j.sample_1.action;

import java.util.Map;

import org.smart4j.framework.dao.bean.Pager;
import org.smart4j.framework.ioc.annotation.Inject;
import org.smart4j.framework.mvc.annotation.Action;
import org.smart4j.framework.mvc.annotation.Request;
import org.smart4j.framework.mvc.bean.Params;
import org.smart4j.framework.mvc.bean.Result;
import org.smart4j.framework.mvc.bean.View;
import org.smart4j.sample_1.entity.User;
import org.smart4j.sample_1.service.UserService;

import alex.zhrenjie04.wordfilter.WordFilterUtil;
import alex.zhrenjie04.wordfilter.result.FilteredResult;

@Action
public class UserAction {

	@Inject
	private UserService userService;
	/**
	 * 列表分页
	 * @param pageNumber
	 * @return
	 */
	@Request.Get("/userlist2/{pageNumber}")
	public View search2(int pageNumber) {
		int pageSize = 2;
		Pager<User> userPager =userService.getUserPager(pageNumber, pageSize);
		return new View("userlist.jsp").data("userPager", userPager);
	}
	/**
	 * 搜索分页
	 * @param username
	 * @return
	 */
	@Request.Get("/search_users/{username}")
	public View serchUsers(String username){
		Pager<User> userPager = userService.searchUser(username);
		return new View("userlist.jsp").data("userPager", userPager);
	}
	
	/**
	 * 添加记录
	 * @param params
	 * @return
	 */
	@Request.Post("/add")
	public View save(Params params) {
		Map<String, Object> fieldMap = params.getFieldMap();
		boolean result = userService.saveUser(fieldMap);
		if (result) {
			return new View("/userlist2/1");
		} else {
			return new View("error.jsp");
		}
	}
	@Request.Post("/add_ajax")
	public Result save1(Params params) {
		Map<String, Object> fieldMap = params.getFieldMap();
		boolean result = userService.saveUser(fieldMap);
		if (result) {
			return new Result(result);
		} else {
			return new Result(result);
		}
	}

	/**
	 * 转到添加页面
	 * @return
	 */
	@Request.Get("/toadd")
	public View toAdd() {
		return new View("add.jsp");
	}
	
	@Request.Get("/totest")
	public View toTest() {
		return new View("test.jsp");
	}

	/**
	 * 删除记录
	 * @param id
	 * @return
	 */
	@Request.Get("/delete/{id}")
	public View delete(int id) {
		boolean result = userService.deleteOne(id);
		if (result) {
			return new View("/userlist2/1");
		} else {
			return new View("error.jsp");
		}
	}

	/**
	 * 修改记录
	 * @param params
	 * @return
	 */
	@Request.Post("/update1")
	public View update(Params params) {
		Map<String, Object> fieldMap = params.getFieldMap();
		boolean result = userService.updateUser(fieldMap);
		if (result) {
			return new View("/userlist2/1");
		} else {
			return new View("error.jsp");
		}
	}
	
	/**
	 * 转到修改页面
	 * @param id
	 * @return
	 */
	@Request.Get("/toupdate/{id}")
	public View toUpdate(int id) {
		User user = userService.findById(id);
		return new View("update.jsp").data("user", user);
	}
	
	@Request.Get("/test")
	public FilteredResult test(){
		String string = "太多BB弹的伤单红宇感情怀也许只局限于饲养基地针孔摄像头 荧幕中的情节，主人公尝试着去用某种方式渐渐的很潇洒地释自杀指南怀那些自己经历的伤感。"
				+ "然后法轮功 我们的扮演的角色就是跟随着主人公的喜红客联盟 怒哀乐而过于牵强的把自己的情感也附加于银幕情节中，然后感动就流泪，"
				+ "难过就躺在某一个人的怀里尽情的阐述心扉或者手机卡复制器一个人一杯红酒一部电影在夜三级片 深人静的晚上，关上电话静静的发呆着。";
		
		return WordFilterUtil.filterHtml(string,'*');
	}
	

}
