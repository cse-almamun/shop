package com.ecommerce.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.dao.UserDao;
import com.ecommerce.model.User;

/**
 * Servlet implementation class UserRegistrationServlet
 */
@WebServlet("/jsp/UserRegistrationServlet")
public class UserRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		
		try {
			
			String name  = req.getParameter("reg_name");
			String email  = req.getParameter("reg_email");
			String password  = req.getParameter("reg_password");
			
			User user = new User(name, email, password);
			
			boolean result = new UserDao().userRegister(user);
			
			if(result) {
				resp.sendRedirect("index.jsp");
			}else {
				resp.sendRedirect("konto.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
