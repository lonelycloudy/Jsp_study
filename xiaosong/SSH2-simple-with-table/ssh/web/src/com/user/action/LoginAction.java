package com.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import com.user.entity.User;
import com.user.service.UserService;

public class LoginAction extends ActionSupport
{
	private String name;

	private String password;

	private UserService userService;

	@Override
	public String execute() throws Exception
	{
		ActionContext context = ActionContext.getContext();
		ValueStack stack = context.getValueStack();
		String name = (String) stack.findValue("name");
		String password = (String) stack.findValue("password");
		if (name != null && name.length() > 0)
		{
			System.out.println("UserName:" + name);
			if (password != null && password.length() > 0)
			{
				System.out.println("Password:" + password);
				if (this.userService == null)
				{
					System.out.println("Login:userService is null");
					return "fail";
				}
				User user = this.userService.find(name);
				if (user != null)
				{
					if (user.getPassword().equals(password))
					{
						HttpServletRequest request = ServletActionContext.getRequest();
						HttpSession session = request.getSession();
						session.setAttribute("user", user);
						return "success";
					} else
					{
						System.out.println("Login:user name not exits");
					}
				} else
				{
					System.out.println("Login:password is wrong");
				}
			} else
			{
				System.out.println("Login:password is illegal");
			}
		} else
		{
			System.out.println("Login:user name is illegal");
		}
		return "fail";
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

	public UserService getUserService()
	{
		return userService;
	}

	public void setUserService(UserService userService)
	{
		this.userService = userService;
	}

}
