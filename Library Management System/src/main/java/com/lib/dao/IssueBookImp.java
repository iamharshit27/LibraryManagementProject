package com.lib.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.lib.util.JDBCUtil;

public class IssueBookImp implements IssueBookDAO {
      Connection con = null;
	public String issuebook(int sid, int bid, String issuedate, String duedate) {
	    String issuestatus = null;
	    PreparedStatement ps = null;
	    String query ="insert into issuebook(bid,sid,issuedate,duedate) values((select bid from books where bid=?),( select sid from student where sid=?),?,?)";
	    try {
	    	con = JDBCUtil.physicalConnection();
	    	if(con!=null)
	    	{
	    		ps = con.prepareStatement(query);
	    		ps.setInt(1,bid);
	    		ps.setInt(2, sid);
	    		ps.setString(3, issuedate);
	    		ps.setString(4, duedate);
	    		if(ps!=null)
	    		{
	    			System.out.println(ps);
	    		  int status = ps.executeUpdate();
	    		   if (status == 1) {
						issuestatus = "success";
					} else {
						issuestatus = "failure";
					}
	    		}
	    	}
	    	
	    }catch(Exception e) {issuestatus = "failure";}
	    
		return issuestatus;
	}
	public ResultSet checkdue(int sid) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		String query ="SELECT issuebook.sid,student.sname,issuebook.bid,books.bname,issuedate,duedate FROM issuebook inner join books on issuebook.bid = books.bid inner  join student on issuebook.sid = student.sid where issuebook.sid =?";
		try {
			con = JDBCUtil.physicalConnection();
			if(con!=null)
			{
				ps = con.prepareStatement(query);
				ps.setInt(1, sid);
				System.out.println(ps);
				if(ps!=null)
				{
					rs = ps.executeQuery();
					return rs;
				}
			}
		}catch(Exception e) {};
		return rs;
	}

}
