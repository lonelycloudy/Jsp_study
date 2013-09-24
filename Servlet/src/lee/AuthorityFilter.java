package lee;
//登录用户session验证,统一过滤未登录用户跳转到登录页面
import javax.servlet.*;
//javac来编译Servlet类,则将tomcat/lib/(servlet-api.jar|jsp-api.jar添加到CLASSPATH环境变量中)
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

public class AuthorityFilter implements Filter{
	//FilerConfig 可用于访问Filter的配置信息
	private FilterConfig config;
	//实现初始化方法
	public void init(FilterConfig config){ 
		this.config = config;
	}
	//实现销毁方法
	public void destroy(){ 
		this.config = null;
	}
	//执行过滤的核心方法
	public void doFilter(ServletRequest request,ServletResponse response,FilterChain chain) throws IOException{ 
		//获取该Filter的配置参数
		String encoding = config.getInitParameter("encoding");
		String loginPage = config.getInitParameter("loginPage");
		String proLogin = config.getInitParameter("proLogin");
		//设置request编码用的字符集
		request.setCharacterEncoding(encoding);
		HttpServletRequest requ = (HttpServletRequest)request;
		HttpSession session = requ.getSession(true);
		//获取客户请求的页面
		String requestPath = requ.getServletPath();
		//如果session范围的user为空,即表明没有登录
		//且用户请求的既不是登录页面,也不是处理登录页面.
		if(session.getAttribute("user") == null && !requestPath.endsWith(loginPage)&& !requestPath.endsWith(proLogin)){ 
			//forward 到登录页面
			request.setAttribute("tip", "您还没有登录");
			try {
				request.getRequestDispatcher(loginPage).forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		//放行请求
		else{ 
			try {
				chain.doFilter(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}
}
