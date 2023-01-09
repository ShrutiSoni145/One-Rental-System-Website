package com.project.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import com.project.bean.UserBean;
import com.project.dao.UserDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpSession;




public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private UserDao dao;
    
    public  AdminLoginServlet() {
        super();
        dao=new UserDao();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		String check = request.getParameter("operation");
	     boolean i=check.equals("Login");
		
		     if(i)
           {
		    UserBean user = new UserBean();
			//String pswd = request.getParameter("password");
			//int passm = Integer.parseInt(pswd);
			String p =request.getParameter("password");
			String u =request.getParameter("username");
			
				//UserDao dao = new UserDao();
			//	boolean signal =dao.validateAdmin(p,u);
				if (p.equals("123456") && u.equals("admin")) {
					out.print("Welcome, " + u);
					HttpSession session = request.getSession(true);
					session.setAttribute("username", u);
					response.sendRedirect("adminUserList.jsp");
					
				}
				else {
					RequestDispatcher rd = request.getRequestDispatcher("adminlogin.jsp");
			        out.println("<font color=red>Sorry You Are Not Authorized.</font>");
			        rd.include(request, response);
			       	}
				}
	
	
}

}
	


