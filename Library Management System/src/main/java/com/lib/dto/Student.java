package com.lib.dto;

public class Student {
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	private int sid;
	private String sname;
	private String scourse;
	private String sphone;
	private String semail;
	public Student(int sid, String sname, String scourse, String sphone, String semail) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.scourse = scourse;
		this.sphone = sphone;
		this.semail = semail;
	}
	public String toString() {
		return "Student [sid=" + sid + ", sname=" + sname + ", scourse=" + scourse + ", sphone=" + sphone + ", semail="
				+ semail + "]";
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getScourse() {
		return scourse;
	}
	public void setScourse(String scourse) {
		this.scourse = scourse;
	}
	public String getSphone() {
		return sphone;
	}
	public void setSphone(String sphone) {
		this.sphone = sphone;
	}
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}

}
