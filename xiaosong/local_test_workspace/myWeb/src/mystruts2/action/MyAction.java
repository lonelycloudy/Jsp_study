package mystruts2.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

/**
 * 注解action测试
 * MyAction
 * @author sunxiaosong@300.cn May 3, 2013
 * @version Date: May 3, 2013 2:19:01 PM
 * @since May 3, 2013
 *
 */
@Namespace(value="myspace")
public class MyAction {
	@Action(value="/myTest", results={@Result(name="success", location="/WEB-INF/content/welcome-user-success.jsp")})
	public String myTest(){
		return "success";
	}
}
