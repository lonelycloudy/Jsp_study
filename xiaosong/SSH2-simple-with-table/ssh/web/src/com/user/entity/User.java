package com.user.entity;

import java.io.Serializable;

public class User implements Serializable {
	private long id;
	private String name;
	private String password;
	private String sex;
	private Integer age;
	private String school;
	private String mobile;
	private String email;

	public User() {
		super();
	}

	public User(String name, String password) {
		super();
		this.name = name;
		this.password = password;
	}

	public User(long id, String name, String password, String sex, Integer age,
			String school, String mobile, String email) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.sex = sex;
		this.age = age;
		this.school = school;
		this.mobile = mobile;
		this.email = email;
	}

	@Override
	public String toString() {
		return "ID:" + this.id + "\tNAME:" + this.name + "\tSEX:" + this.sex
				+ "\tAGE:" + this.age + "\tSCHOOL:" + this.school + "\tMOBILE:"
				+ this.mobile + "\tEMAIL:" + this.email;
	}

	@Override
	public boolean equals(Object obj) {
		if (obj instanceof User) {
			User user = (User) obj;
			return user.getName().equals(this.name)
					&& user.getPassword().equals(this.password);
		}
		return false;
	}

	@Override
	public int hashCode() {
		int hashCode = 0;
		hashCode = (this.name.hashCode() + this.password.hashCode()) * 17;
		return hashCode;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
