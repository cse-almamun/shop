package com.ecommerce.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.ProtectionDomain;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.ecommerce.dao.ProductDao;
import com.ecommerce.model.*;


@WebServlet("/admin/AddProductServlet")
@MultipartConfig
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		try{
			
			final String realPath = getServletContext().getRealPath("/assets/img/");
			String name = req.getParameter("name");
			String price = req.getParameter("price");
			String category = req.getParameter("category");
			Part part = req.getPart("image");
			String fileName = part.getSubmittedFileName();
			String description = req.getParameter("description");
			
			String filePath = "/assets/img/"+fileName; 
//			 realPath+fileName;
			
			Product product = new Product(name, Double.parseDouble(price), Integer.parseInt(category), filePath, description);
			
			ProductDao pdao = new ProductDao();
			
			boolean result = pdao.insertProduct(product);
			
			if(result) {
				resp.sendRedirect("index.jsp");
			}else {
				resp.sendRedirect("add-product.jsp");
			}
			
			
			
			
		}catch (Exception e) {
			out.print(e.getMessage());
		}
	}

}
