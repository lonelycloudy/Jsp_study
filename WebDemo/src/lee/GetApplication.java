package lee;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(name="get-application",urlPatterns={"/get-application"})
//Servlet中访问application里的变量counter
public class GetApplication {
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>");
		out.println("测试application");
		out.println("</title></head><body>");
		ServletContext sc = getServletConfig().getServletContext();
		out.print("application 中的当前的counter值为:");
		out.println(sc.getAttribute("counter"));
		out.println("</body></html>");
		
	}
}
