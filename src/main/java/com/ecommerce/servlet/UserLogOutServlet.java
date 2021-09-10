package com.ecommerce.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.model.*;

/**
 * Servlet implementation class AdminLogOutServlet
 */
@WebServlet("/jsp/UserLogOutServlet")
public class UserLogOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = (User) req.getSession().getAttribute("user");
		if(user != null) {
			req.getSession().removeAttribute("admin");
			req.getSession().invalidate();
			resp.sendRedirect("index.jsp");
		}else {
			resp.sendRedirect("konto.jsp");
		}
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

}
