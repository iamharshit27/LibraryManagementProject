package com.lib.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.lib.dto.Student;
import com.lib.util.JDBCUtil;

public class StudentDAOImp implements StudentDAO {
	Connection con = null;
	public String save(Student student) {
		PreparedStatement ps = null;
		String status = null;
		String query = "insert into student(sname,sid,scourse,sphone,semail) values(?,?,?,?,?)";
		
		try {
		con = JDBCUtil.physicalConnection();
		if(con!=null)
		{
			ps =con.prepareStatement(query);
			if(ps!=null)
			{
				ps.setString(1, student.getSname());
				ps.setInt(2, student.getSid());
				ps.setString(3, student.getScourse());
				ps.setString(4, student.getSphone());
				ps.setString(5, student.getSemail());
			}
			System.out.println(ps);
			if (ps != null) {
				int rowAffected = ps.executeUpdate();
				if (rowAffected == 1) {
					status = "success";
				} else {
					status = "failure";
				}
			}
		
		}
		}catch(Exception e) {
			status="failure";
		}
		return  status;
	}

	public Student findById(int sid) {
	  PreparedStatement ps = null;
	  ResultSet rs = null;
	  Student std = null;
	  String sname = null;
	  String scourse = null;
	  String sphone = null;
	  String semail = null;
	  String query ="select sname,sid,scourse,sphone,semail from student where sid=?";
	  
	  try {
		  con =JDBCUtil.physicalConnection();
		  if(con!=null)
		  {
			  ps = con.prepareStatement(query);
			  if(ps!=null)
			  {
			    ps.setInt(1, sid);	  
			  }
			  if(ps!=null)
			  {
				  rs = ps.executeQuery();
			  }
			  rs.next();
			  if(rs!=null)
			  {
				  sname = rs.getNString("sname");
				  scourse = rs.getNString("scourse");
				  sphone = rs.getNString("sphone");
				  semail = rs.getNString("semail");
			  }
			  std = new Student();
			  std.setScourse(scourse);
			  std.setSemail(semail);
			  std.setSid(sid);
			  std.setSname(sname);
			  std.setSphone(sphone);
			  
			  con.close();
			  ps.close();
			  rs.close();
		  }
	  }catch(Exception e) {}
		
		
		
		return std;
	}

	public String udateById(int sid) {
		// TODO Auto-generated method stub
		return null;
	}

	public String deleteById(int sid) {
		 PreparedStatement ps = null;
		 String delstatus = null;
		  String query ="delete from student where(sid=?)";
		  try {
			  con = JDBCUtil.physicalConnection();
			  if(con!=null)
			  {
				  ps = con.prepareStatement(query);
				  if(ps!=null)
				  {
					  ps.setInt(1, sid);
				  }
				  if(ps!=null)
				  {
					  int rowAffect = ps.executeUpdate();
					  if(rowAffect==1)
					  {
						  delstatus="success";
					  }
					  else
					  {
						  delstatus="failure";
					  }
				  }
			  }
			  
		  }catch(Exception e) {delstatus="failure";}
		 
		 
		  
		return delstatus;
	}

	public ResultSet findAll() {

		 PreparedStatement ps = null;
		 ResultSet rs = null;
		 String query ="Select* from student";
		  try {
			  con = JDBCUtil.physicalConnection();
			  if(con!=null)
			  {
				  ps = con.prepareStatement(query);
				  if(ps!=null)
				  {
					  rs = ps.executeQuery(query);
				  }
			  }
		  }catch(Exception e) {}
		return rs;
	}
		

}
