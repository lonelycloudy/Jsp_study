package com.user.service;

import java.util.List;

import com.user.dao.UserDao;
import com.user.entity.User;

public class UserServiceImpl implements UserService
{
	private UserDao userDao;

	public List<User> query()
	{
		return userDao.query();
	}

	public User find(String name)
	{
		User user = null;
		user = this.userDao.query(name);
		return user;
	}

	/**
	 * 服务层接口实现
	 */
	public void save(User user)
	{
		this.userDao.insert(user);
	}

	public User modify(User user)
	{
		return this.userDao.update(user);
	}

	public void setUserDao(UserDao userDao)
	{
		this.userDao = userDao;
	}

	/**
	 * 分页查询
	 * 
	 * @param currentPage
	 *            当前第几页
	 * @param pageSize
	 *            每页大小
	 * @return 封闭了分页信息(包括记录集list)的Bean
	 */
	public PageBean queryForPage(int pageSize, int page)
	{

		final String hql = "from User"; // 查询语句
		int allRow = userDao.getAllRowCount(hql); // 总记录数
		int totalPage = PageBean.countTotalPage(pageSize, allRow); // 总页数
		final int offset = PageBean.countOffset(pageSize, page); // 当前页开始记录
		final int length = pageSize; // 每页记录数
		final int currentPage = PageBean.countCurrentPage(page);
		List<User> list = userDao.queryForPage(hql, offset, length); // "一页"的记录

		// 把分页信息保存到Bean中
		PageBean pageBean = new PageBean();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList(list);
		pageBean.init();
		return pageBean;
	}

}
