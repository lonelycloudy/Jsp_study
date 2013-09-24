package com.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.user.entity.User;
import com.user.service.UserService;

public class ModifyAction extends ActionSupport
{

	private UserService userService;
	private String name, password, email, school;
	private String id;

	@Override
	public String execute() throws Exception
	{
		if (name != null && name.length() > 0)
		{
			if (password != null && password.length() > 0)
			{
				User user = new User();
				user.setId(Integer.parseInt(id));
				user.setName(name);
				user.setPassword(password);
				user.setEmail(email);
				user.setSchool(school);

				user = this.userService.modify(user);
				
				HttpServletRequest request = ServletActionContext.getRequest();
				HttpSession session = request.getSession();
				session.setAttribute("user", user);

				return "success";
			}
		}

		return "fail";
	}

	public UserService getUserService()
	{
		return userService;
	}

	public void setUserService(UserService userService)
	{
		this.userService = userService;
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

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public String getSchool()
	{
		return school;
	}

	public void setSchool(String school)
	{
		this.school = school;
	}

	public String getId()
	{
		return id;
	}

	public void setId(String id)
	{
		this.id = id;
	}

	

}
