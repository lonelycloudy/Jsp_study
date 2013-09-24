package mystruts2.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 注解action测试
 * WelcomeUser
 * @author sunxiaosong@300.cn May 3, 2013
 * @version Date: May 3, 2013 2:18:46 PM
 * @since May 3, 2013
 *
 */
public class WelcomeUser extends ActionSupport {
	private static final long serialVersionUID = -627249928442178462L;
	
	public String excute(){
		return SUCCESS;
	}
	
	public String customMethod(){
		return SUCCESS;
	}
}
