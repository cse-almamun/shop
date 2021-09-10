package com.ecommerce.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.dao.*;
import com.ecommerce.model.*;

/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/admin/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		
		PrintWriter out = resp.getWriter();

		try {
			String email = req.getParameter("login_email");
			String password = req.getParameter("login_password");

			AdminDao adao = new AdminDao();
			Admin admin = adao.adminLoginAuth(email, password);

			if (admin != null) {
				req.getSession().setAttribute("admin", admin);
				resp.sendRedirect("index.jsp");

			}else {
				out.print("Incorrect Credential <a href='login.jsp'>Try again</a>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
