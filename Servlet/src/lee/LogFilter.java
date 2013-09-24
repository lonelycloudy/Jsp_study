package lee;

import javax.servlet.*;
//javac来编译Servlet类,则将tomcat/lib/(servlet-api.jar|jsp-api.jar添加到CLASSPATH环境变量中)
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LogFilter implements Filter{
	//FilterConfig 可用于访问Filter的配置信息
	private FilterConfig config;
	//实现初始化方法
	public void init(FilterConfig config){ 
			this.config = config;
	}
	//实现销毁方法
	public void destroy(){ 
		this.config=null;
	}
	//执行过滤的核心方法
	public void doFilter(ServletRequest request,ServletResponse response,FilterChain chain){ 
		//---------下面代码用于对用户请求执行预处理--------
		//获取ServletContext对象,用于记录日志
		ServletContext context = this.config.getServletContext();
		long before = System.currentTimeMillis();
		System.out.println("开始过滤..");
		//将请求转换成HttpServletRequest
		HttpServletRequest hrequest = (HttpServletRequest)request;
		//输出提示信息
		System.out.println("Filter已经截获到用户的请求的地址:"+hrequest.getServletPath());
		//Filter只是链式处理,请求依然放行到目的地址.
		try {
			chain.doFilter(request,response);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//---------下面代码 用于对服务器响应执行后处理-------
		long after = System.currentTimeMillis();
		//输出提示信息
		System.out.println("过滤结束.");
		//输出提示信息.
		System.out.println("请求被定位到"+hrequest.getRequestURI()+"所花的时间为"+(after-before));
	}
}
/*
 * http://localhost:8080/Servlet/t.jsp
 * 开始过滤..
Filter已经截获到用户的请求的地址:/t.jsp
过滤结束.
请求被定位到/Servlet/t.jsp所花的时间为1609
开始过滤..
Filter已经截获到用户的请求的地址:/styles.css
过滤结束.
请求被定位到/Servlet/styles.css所花的时间为0
**/
