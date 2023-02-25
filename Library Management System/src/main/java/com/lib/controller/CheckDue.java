package com.lib.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lib.dao.IssueBookDAO;
import com.lib.dao.IssueBookImp;
import com.lib.dao.StudentDAO;
import com.lib.dao.StudentDAOImp;
import com.lib.dto.Student;

@WebServlet("/CheckDue")
public class CheckDue extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sid = Integer.parseInt(request.getParameter("student-id"));
		Student std = null;
		String chstat="error";
		StudentDAO student = new StudentDAOImp();
		std = student.findById(sid);
		IssueBookDAO check = new IssueBookImp();
		ResultSet rs = null;
		if(std!=null)
		{
			rs = check.checkdue(sid);
		}
		if(rs!=null)
		{
			chstat="success";
			System.out.println(rs);
			HttpSession session = request.getSession();
			session.setAttribute("checkRs", rs);
			response.sendRedirect("checkform.jsp");
		}
		if(chstat=="error")
		{
		HttpSession session = request.getSession();
		session.setAttribute("chstat", chstat);
		response.sendRedirect("checkdue.jsp");
		}
	}

	
}
