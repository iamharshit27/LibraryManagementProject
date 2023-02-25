package com.lib.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lib.dao.ReturnBooksClass;


@WebServlet("/ReturnBook")
public class ReturnBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sid = Integer.parseInt(request.getParameter("sid"));
		int bid = Integer.parseInt(request.getParameter("bid"));
		ReturnBooksClass retbook = new ReturnBooksClass();
		String retstatus = null;
		retstatus = retbook.bookReturn(sid, bid);
		
		HttpSession session = request.getSession();
		session.setAttribute("retstatus", retstatus);
		response.sendRedirect("returnstatus.jsp");
		
		
	}

	

}
