package com.lib.dto;

public class ValidateLibrarian {
	
	private String lusername;
	private String lpassword;
	
	
	public String getLusername() {
		return lusername;
	}
	public void setLusername(String lusername) {
		this.lusername = lusername;
	}
	public String getLpassword() {
		return lpassword;
	}
	public void setLpassword(String lpassword) {
		this.lpassword = lpassword;
	}
	public String toString() {
		return "ValidateLibraian [ lusername=" + lusername + ", lpassword=" + lpassword + "]";
	}
	

}
