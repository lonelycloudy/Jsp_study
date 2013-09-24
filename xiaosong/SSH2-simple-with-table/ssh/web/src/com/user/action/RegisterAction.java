package com.user.action;

import com.opensymphony.xwork2.ActionSupport;
import com.user.entity.User;
import com.user.service.UserService;

public class RegisterAction extends ActionSupport
{
	/*
	 * 数据库服务
	 * 配置：WEB-INF/applicationContext.xml
	 * <bean id="userService" class="com.user.service.UserServiceImpl">
	 */
	private UserService userService;

	public UserService getUserService()
	{
		return userService;
	}

	public void setUserService(UserService userService)
	{
		this.userService = userService;
	}
	
	/**
	 * 绑定对象
	 */
	private User user;
	public User getUser()
	{
		return user;
	}

	public void setUser(User user)
	{
		this.user = user;
	}
	
	//使用Struts 2.0，表单数据的输入将变得非常方便，
	//和普通的POJO一样在Action编写Getter和Setter，
	//然后在JSP的UI标志的name与其对应，
	//在提交表单到Action时，我们就可以取得其值。

	
	/*
	 * 绑定界面字段，取得界面的值
	 */
	private String name, password, email;

	@Override
	public String execute() throws Exception
	{		
		if(user!=null)
		{
			this.userService.save(user);

			return "success";
		}
			
		if (name != null && name.length() > 0)
		{
			if (password != null && password.length() > 0)
			{
				User user = new User();
				user.setName(name);
				user.setPassword(password);
				user.setEmail(email);

				this.userService.save(user);

				/*
				 * 配置：classes/struts.xml
				 */
				return "success";
			}
		}

		return "fail";
	}

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

}
