package com.ecommerce.servlet.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.model.Admin;

/**
 * Servlet implementation class AdminLogOutServlet
 */
@WebServlet("/admin/AdminLogOutServlet")
public class AdminLogOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Admin admin = (Admin) req.getSession().getAttribute("admin");
		if(admin != null) {
			req.getSession().removeAttribute("admin");
			req.getSession().invalidate();
			resp.sendRedirect("login.jsp");
		}else {
			resp.sendRedirect("index.jsp");
		}
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

}
