package com.lib.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.lib.util.JDBCUtil;

public class ReturnBooksClass {
           Connection con = null;
	public String bookReturn(int sid,int bid)
	{
		 PreparedStatement ps = null;
		 String delBstatus = null;
		  String query ="delete from issuebook where sid=? and bid=?";
		  try {
			  con = JDBCUtil.physicalConnection();
			  if(con!=null)
			  {
				  ps = con.prepareStatement(query);
				  if(ps!=null)
				  {
					  ps.setInt(1, sid);
					  ps.setInt(2, bid);
				  }
				  if(ps!=null)
				  {
					  int rowAffect = ps.executeUpdate();
					  if(rowAffect==1)
					  {
						  delBstatus="success";
					  }
					  else
					  {
						  delBstatus="failure";
					  }
				  }
			  }
			  
		  }catch(Exception e) {delBstatus="failure";}
		 
		 
		  
		return delBstatus;
	}
}
