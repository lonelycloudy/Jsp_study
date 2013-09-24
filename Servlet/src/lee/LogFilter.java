package lee;

import javax.servlet.*;
//javac������Servlet��,��tomcat/lib/(servlet-api.jar|jsp-api.jar��ӵ�CLASSPATH����������)
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LogFilter implements Filter{
	//FilterConfig �����ڷ���Filter��������Ϣ
	private FilterConfig config;
	//ʵ�ֳ�ʼ������
	public void init(FilterConfig config){ 
			this.config = config;
	}
	//ʵ�����ٷ���
	public void destroy(){ 
		this.config=null;
	}
	//ִ�й��˵ĺ��ķ���
	public void doFilter(ServletRequest request,ServletResponse response,FilterChain chain){ 
		//---------����������ڶ��û�����ִ��Ԥ����--------
		//��ȡServletContext����,���ڼ�¼��־
		ServletContext context = this.config.getServletContext();
		long before = System.currentTimeMillis();
		System.out.println("��ʼ����..");
		//������ת����HttpServletRequest
		HttpServletRequest hrequest = (HttpServletRequest)request;
		//�����ʾ��Ϣ
		System.out.println("Filter�Ѿ��ػ��û�������ĵ�ַ:"+hrequest.getServletPath());
		//Filterֻ����ʽ����,������Ȼ���е�Ŀ�ĵ�ַ.
		try {
			chain.doFilter(request,response);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//---------������� ���ڶԷ�������Ӧִ�к���-------
		long after = System.currentTimeMillis();
		//�����ʾ��Ϣ
		System.out.println("���˽���.");
		//�����ʾ��Ϣ.
		System.out.println("���󱻶�λ��"+hrequest.getRequestURI()+"������ʱ��Ϊ"+(after-before));
	}
}
/*
 * http://localhost:8080/Servlet/t.jsp
 * ��ʼ����..
Filter�Ѿ��ػ��û�������ĵ�ַ:/t.jsp
���˽���.
���󱻶�λ��/Servlet/t.jsp������ʱ��Ϊ1609
��ʼ����..
Filter�Ѿ��ػ��û�������ĵ�ַ:/styles.css
���˽���.
���󱻶�λ��/Servlet/styles.css������ʱ��Ϊ0
**/
