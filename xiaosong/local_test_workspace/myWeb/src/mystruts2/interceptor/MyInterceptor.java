package mystruts2.interceptor;

import javax.interceptor.Interceptors;

import org.apache.struts2.convention.annotation.InterceptorRef;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * 测试拦截器
 * MyInterceptor
 * @author sunxiaosong@300.cn May 6, 2013
 * @version Date: May 6, 2013 5:21:17 PM
 * @since May 6, 2013
 *
 */
public class MyInterceptor extends AbstractInterceptor {
	private static final long serialVersionUID = -6353843129541807847L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("action执行之前处理。");
		String resultCode = invocation.invoke();
		System.out.println("action执行之后处理。");
		return resultCode;
	}

}
