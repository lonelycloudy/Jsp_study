package mystruts2;

import com.opensymphony.xwork2.ActionSupport;

public class MyAction extends ActionSupport {
	private static final long serialVersionUID = 657072434687732113L;

	public String test(){
		return SUCCESS;
	}
	
	public String anotherTest(){
		return SUCCESS;
	}
}
