package com.lib.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lib.dao.StudentDAO;
import com.lib.dao.StudentDAOImp;
import com.lib.dto.Student;


@WebServlet("/AddStudent")

public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 2L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
		StudentDAO student = null;
	 String name = request.getParameter("name");
     String email = request.getParameter("email");
     String course= request.getParameter("course");
     String phoneno = request.getParameter("phoneno");
     int sid =Integer.parseInt(request.getParameter("sid"));
     
     Student std = new Student();
     
     std.setSname(name);
     std.setScourse(course);
     std.setSemail(email);
     std.setSid(sid);
     std.setSphone(phoneno);
     
     student = new StudentDAOImp();
     String status = student.save(std);
     
     HttpSession session = request.getSession();     
     session.setAttribute("stdstatus", status);
     response.sendRedirect("addstudent.jsp");
     System.out.println(status+"---");
	}

	

}
