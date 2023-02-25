package com.lib.dto;

public class Books {
	public Books() {
		super();
		
	}
	private int bid;
	private String bname;
	private String bauthor;
	private String bsubject;
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBauthor() {
		return bauthor;
	}
	public void setBauthor(String bauthor) {
		this.bauthor = bauthor;
	}
	public String getBsubject() {
		return bsubject;
	}
	public void setBsubject(String bsubject) {
		this.bsubject = bsubject;
	}
	public String toString() {
		return "Books [bid=" + bid + ", bname=" + bname + ", bauthor=" + bauthor + ", bsubject=" + bsubject + "]";
	}
	public Books(int bid, String bname, String bauthor, String bsubject) {
		super();
		this.bid = bid;
		this.bname = bname;
		this.bauthor = bauthor;
		this.bsubject = bsubject;
	}
	

}
