package com.lib.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lib.dao.LibrarianDAO;
import com.lib.dao.LibrarianDAOImp;
import com.lib.dto.ValidateLibrarian;


 
@WebServlet("/Validate")
public class Validate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LibrarianDAO libdao =null;
        
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	  ValidateLibrarian vl = new ValidateLibrarian();
	  vl.setLpassword(password);
	  vl.setLusername(username);
	   libdao = new LibrarianDAOImp();
	   int id = libdao.librarianValidate(vl);
	   HttpSession session = request.getSession();     
       session.setAttribute("lid", id);
	   System.out.print(id);
		if(id==-1)
		{
			 RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		       rd.forward(request, response);
		} 
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("libMain.jsp");
		       rd.forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
