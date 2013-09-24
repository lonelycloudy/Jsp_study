package com.user.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.user.entity.User;

public class UserDaoImpl implements UserDao
{
	private HibernateTemplate hibernateTemplate;

	public void delete(User user)
	{
		this.hibernateTemplate.delete(user);
	}

	/**
	 * 数据层接口实现
	 */
	public void insert(User user)
	{
		this.hibernateTemplate.save(user);
	}

	public User query(String name)
	{
		String hql = "from User user where user.name=:n";
		List<User> users = this.hibernateTemplate.findByNamedParam(hql, "n", name);
		User user = null;
		if (users != null && users.size() > 0)
		{
			user = users.get(0);
		} else
		{
			System.out.println("query():users.size=" + users.size());
		}
		return user;
	}

	public List<User> query()
	{
		String hql = "from User user";
		List<User> users = this.hibernateTemplate.find(hql);
		return users;
	}

	public User update(User user)
	{
		this.hibernateTemplate.update(user);
		return this.query(user.getName());
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate)
	{
		this.hibernateTemplate = hibernateTemplate;
	}

	/**
	 * 分页查询
	 * 
	 * @param hql
	 *            查询的条件
	 * @param offset
	 *            开始记录
	 * @param length
	 *            一次查询几条记录
	 * @return
	 */
	public List queryForPage(final String hql, final int offset, final int length)
	{
		List list = hibernateTemplate.executeFind(new HibernateCallback()
		{
			public Object doInHibernate(Session session) throws HibernateException, SQLException
			{
				Query query = session.createQuery(hql);
				query.setFirstResult(offset);
				query.setMaxResults(length);
				List list = query.list();
				return list;
			}
		});
		return list;
	}

	/**
	 * 查询所有记录数
	 * 
	 * @return 总记录数
	 */
	public int getAllRowCount(String hql)
	{
		return hibernateTemplate.find(hql).size();
	}

}
