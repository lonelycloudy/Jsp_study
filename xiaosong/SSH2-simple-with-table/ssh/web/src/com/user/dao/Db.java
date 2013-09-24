package com.user.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

public class Db
{

	public Db()
	{
		try
		{
			// new sun.jdbc.odbc.JdbcOdbcDriver();
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	public Connection getConn()
	{
		Connection conn = null;
		try
		{
			String dbpath = Thread.currentThread().getContextClassLoader().getResource("student.mdb").getPath();
			System.out.println("dbpath:" + dbpath.substring(1));
			String url = "jdbc:odbc:Driver={MicroSoft Access Driver (*.mdb)};DBQ=" + dbpath.substring(1);
			Properties prop = new Properties();
			prop.put("charSet", "gb2312");// 中文乱码只要添加这句话就可以
			// prop.put("user", "admin");
			// prop.put("password", "admin");
			conn = DriverManager.getConnection(url, prop);
			// conn=DriverManager.getConnection(url);

		} catch (Exception e)
		{
			// TODO: handle exception
			e.printStackTrace();
		}
		return conn;
	}

	public Statement getStmt(Connection conn)
	{
		Statement stmt = null;
		try
		{
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
		} catch (Exception e)
		{
			// TODO: handle exception
			e.printStackTrace();
		}
		return stmt;
	}

	public ResultSet getQuery(Connection conn, String sql)
	{
		ResultSet rs = null;
		try
		{
			rs = getStmt(conn).executeQuery(sql);
		} catch (Exception e)
		{
			// TODO: handle exception
			e.printStackTrace();
		}
		return rs;
	}

	public int update(Connection conn, String sql)
	{
		int r = 0;
		try
		{
			r = getStmt(conn).executeUpdate(sql);
		} catch (Exception e)
		{
			// TODO: handle exception
			e.printStackTrace();
		}
		return r;
	}

	public void closeSt(Statement st)
	{
		try
		{
			if (st != null)
				st.close();
		} catch (Exception e)
		{
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public void closeRs(ResultSet rs)
	{
		try
		{
			if (rs != null)
				rs.close();
		} catch (Exception e)
		{
			// TODO: handle exception
		}
	}

	public void closeConn(Connection conn)
	{
		try
		{
			if (conn != null)
				conn.close();
		} catch (Exception e)
		{
			// TODO: handle exception
		}
	}
}
