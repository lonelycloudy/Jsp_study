package lee;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import sun.rmi.transport.Connection;

public class GetConnListener implements ServletContextListener {
	//应用关闭时,该方法被调用
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		//取得该应用的ServletContext实例
		ServletContext application = sce.getServletContext();
		Connection conn = (Connection)application.getAttribute("conn");
		//关闭数据库连接
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
	//应用启动时该方法被调用
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		try{ 
			//取得该应用的ServletContext实例 
			ServletContext application = sce.getServletContext();
			//从配置参数中获取驱动|连接|用户名|密码
			String driver =  application.getInitParameter("driver");
			String url = application.getInitParameter("url");
			String user = application.getInitParameter("user");
			String pass = application.getInitParameter("pass");
			//注册驱动
			Class.forName(driver).newInstance();
			//获取数据库连接
			Connection conn = (Connection) DriverManager.getConnection(url,user,pass);
			//将数据库接连设置成application范围的属性
			application.setAttribute("conn", conn);
		}
		catch(Exception ex){ 
			System.out.println("Listener中获取数据库连接出现异常."+ex.getMessage());
		}
	}

}
