package com.user.action;

import com.opensymphony.xwork2.ActionSupport;
import com.user.service.PageBean;
import com.user.service.UserService;

public class UserListAction extends ActionSupport
{
	

	private int page; // 第几页

	private PageBean pageBean; // 包含分布信息的bean

	public int getPage()
	{
		return page;
	}

	public void setPage(int page)
	{ // 若URL中无此参数,会默认为第1页
		this.page = page;
	}

	public PageBean getPageBean()
	{
		return pageBean;
	}

	public void setPageBean(PageBean pageBean)
	{
		this.pageBean = pageBean;
	}

	@Override
	public String execute() throws Exception
	{
		// 分页的pageBean,参数pageSize表示每页显示记录数,page为当前页
		this.pageBean = userService.queryForPage(2, page);
		return SUCCESS;
	}

	private UserService userService;
	
	public UserService getUserService()
	{
		return userService;
	}

	public void setUserService(UserService userService)
	{
		this.userService = userService;
	}

}
