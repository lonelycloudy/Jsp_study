package lee;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(name="get-application",urlPatterns={"/get-application"})
//Servlet�з���application��ı���counter
public class GetApplication {
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>");
		out.println("����application");
		out.println("</title></head><body>");
		ServletContext sc = getServletConfig().getServletContext();
		out.print("application �еĵ�ǰ��counterֵΪ:");
		out.println(sc.getAttribute("counter"));
		out.println("</body></html>");
		
	}
}
