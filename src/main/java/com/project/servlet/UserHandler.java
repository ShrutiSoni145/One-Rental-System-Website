package com.project.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.project.bean.UserBean;

import com.project.dao.UserDao;

import java.io.IOException;

public class UserHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 private UserDao dao;
	 
	    public UserHandler() {
	        super();
	       dao=new UserDao();
	    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String operation = request.getParameter("operation");
		if (operation.equalsIgnoreCase("delete")) {                   //for delete
			String username = request.getParameter("username");
			//int uid = Integer.parseInt(userId);
			dao.removeUser(username);
			//redirect = "/listUser.jsp";
			//request.setAttribute("users", dao.getAllUsers());
			System.out.println("Record Deleted Successfully");

			RequestDispatcher rd = request.getRequestDispatcher("/adminUserList.jsp");
			rd.forward(request, response);	
	}else if (operation.equalsIgnoreCase("editform")) {
		RequestDispatcher rd = request.getRequestDispatcher("/edit.jsp");
		rd.forward(request, response);
	}else if (operation.equalsIgnoreCase("edit")) {
		//String username = request.getParameter("username");
		String pwd = request.getParameter("password");
	
		
		UserBean user = new UserBean();
		
		user.setName(request.getParameter("username1"));
		user.setEmail(request.getParameter("email"));
		user.setAddress(request.getParameter("address"));
		user.setPassword(pwd);
		user.setMobile(request.getParameter("mobile"));
		
		dao.editUser(user);
		//request.setAttribute("user", user);
		//redirect = "/listUser.jsp";
		System.out.println("Record updated Successfully");

		RequestDispatcher rd = request.getRequestDispatcher("/listuser1.jsp");
		rd.forward(request, response);
	}
		
		
		
		
		
		
		
		
		
		
		
		
}
}