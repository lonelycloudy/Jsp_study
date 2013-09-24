package mystruts2.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 注解action测试
 * AnnotationAction
 * @author sunxiaosong@300.cn May 3, 2013
 * @version Date: May 3, 2013 2:22:15 PM
 * @since May 3, 2013
 *
 */
@ParentPackage(value="basicstruts2")
public class AnnotationAction extends ActionSupport {
	private static final long serialVersionUID = 1001460965639269561L;

	@Action(
			value="helloword", 
			results={@Result(name="success", location="/view/helloWorld.jsp")},
			interceptorRefs={@InterceptorRef(value="extendDefaultStack")}
	)
	public String helloWorld(){
		return "success";
	}
}
