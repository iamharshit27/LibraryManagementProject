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
import com.lib.dto.Books;

@WebServlet("/DelBook")
public class DelBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int bid = Integer.parseInt(request.getParameter("book-id"));
	String delBstatus = null;
	BookDAO bookdao = new BookDAOImp();
	Books book = new Books();
	
    book = bookdao.findById(bid);
    if(book!=null)
    {
    	delBstatus = bookdao.deleteById(bid);
    }
    HttpSession session = request.getSession();     
    session.setAttribute("delBstatus",delBstatus);
    response.sendRedirect("delbook.jsp");
	}


}
