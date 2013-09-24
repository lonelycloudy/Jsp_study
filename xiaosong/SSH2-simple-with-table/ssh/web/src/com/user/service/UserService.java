package com.user.service;


import java.util.List;

import com.user.entity.User;

public interface UserService
{
	public User find(String name);

	/**
	 * 服务层接口
	 */
	public void save(User user);

	public User modify(User user);

	public List<User> query();

	/**
	 * 分页查询
	 * 
	 * @param currentPage
	 *            当前第几页
	 * @param pageSize
	 *            每页大小
	 * @return 封闭了分页信息(包括记录集list)的Bean
	 */
	public PageBean queryForPage(int pageSize, int currentPage);

}
