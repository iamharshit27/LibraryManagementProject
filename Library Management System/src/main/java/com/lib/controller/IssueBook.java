package com.lib.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lib.dao.BookDAO;
import com.lib.dao.BookDAOImp;
import com.lib.dao.IssueBookDAO;
import com.lib.dao.IssueBookImp;
import com.lib.dao.StudentDAO;
import com.lib.dao.StudentDAOImp;
import com.lib.dto.Books;
import com.lib.dto.Student;

@WebServlet("/IssueBook")
public class IssueBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int sid = Integer.parseInt(request.getParameter("sid"));
    int bid =  Integer.parseInt(request.getParameter("bid"));
    String issuedate = request.getParameter("issuedate");
    String duedate = request.getParameter("duedate");
    String issuestatus = "error";
    IssueBookDAO isbook = new IssueBookImp();
    BookDAO bk = new BookDAOImp();
    StudentDAO student =  new StudentDAOImp();
    Student std = null;
    Books book = null;
    
    book = bk.findById(bid);
    std = student.findById(sid);
    
    if(book!=null && std!=null)
    {
    	issuestatus = isbook.issuebook(sid, bid, issuedate, duedate);
    }

	
			HttpSession session = request.getSession();
			session.setAttribute("issuestatus", issuestatus);
			response.sendRedirect("issuebook.jsp");
		

}
}
