package lee;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import sun.rmi.transport.Connection;

public class GetConnListener implements ServletContextListener {
	//Ӧ�ùر�ʱ,�÷���������
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		//ȡ�ø�Ӧ�õ�ServletContextʵ��
		ServletContext application = sce.getServletContext();
		Connection conn = (Connection)application.getAttribute("conn");
		//�ر����ݿ�����
		if(conn != null){ 
			try{
				conn.close();
			}
			catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	//Ӧ������ʱ�÷���������
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		try{ 
			//ȡ�ø�Ӧ�õ�ServletContextʵ�� 
			ServletContext application = sce.getServletContext();
			//�����ò����л�ȡ����|����|�û���|����
			String driver =  application.getInitParameter("driver");
			String url = application.getInitParameter("url");
			String user = application.getInitParameter("user");
			String pass = application.getInitParameter("pass");
			//ע������
			Class.forName(driver).newInstance();
			//��ȡ���ݿ�����
			Connection conn = (Connection) DriverManager.getConnection(url,user,pass);
			//�����ݿ�������ó�application��Χ������
			application.setAttribute("conn", conn);
		}
		catch(Exception ex){ 
			System.out.println("Listener�л�ȡ���ݿ����ӳ����쳣."+ex.getMessage());
		}
	}

}
