package lee;
//��¼�û�session��֤,ͳһ����δ��¼�û���ת����¼ҳ��
import javax.servlet.*;
//javac������Servlet��,��tomcat/lib/(servlet-api.jar|jsp-api.jar��ӵ�CLASSPATH����������)
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

public class AuthorityFilter implements Filter{
	//FilerConfig �����ڷ���Filter��������Ϣ
	private FilterConfig config;
	//ʵ�ֳ�ʼ������
	public void init(FilterConfig config){ 
		this.config = config;
	}
	//ʵ�����ٷ���
	public void destroy(){ 
		this.config = null;
	}
	//ִ�й��˵ĺ��ķ���
	public void doFilter(ServletRequest request,ServletResponse response,FilterChain chain) throws IOException{ 
		//��ȡ��Filter�����ò���
		String encoding = config.getInitParameter("encoding");
		String loginPage = config.getInitParameter("loginPage");
		String proLogin = config.getInitParameter("proLogin");
		//����request�����õ��ַ���
		request.setCharacterEncoding(encoding);
		HttpServletRequest requ = (HttpServletRequest)request;
		HttpSession session = requ.getSession(true);
		//��ȡ�ͻ������ҳ��
		String requestPath = requ.getServletPath();
		//���session��Χ��userΪ��,������û�е�¼
		//���û�����ļȲ��ǵ�¼ҳ��,Ҳ���Ǵ����¼ҳ��.
		if(session.getAttribute("user") == null && !requestPath.endsWith(loginPage)&& !requestPath.endsWith(proLogin)){ 
			//forward ����¼ҳ��
			request.setAttribute("tip", "����û�е�¼");
			try {
				request.getRequestDispatcher(loginPage).forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		//��������
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
