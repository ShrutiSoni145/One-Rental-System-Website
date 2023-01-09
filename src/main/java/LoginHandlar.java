

import java.io.IOException;

import com.project.bean.Sendemail;
import com.project.bean.UserBean;
import com.project.dao.UserDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class LoginHandlar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private UserDao dao;
    
    public LoginHandlar() {
        super();
        dao=new UserDao();
    }



 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String operation = request.getParameter("operation");
		if (operation.equalsIgnoreCase("insert")) {
			String pwd = request.getParameter("password");
			//int pawrd = Integer.parseInt(pwd);
			
			Sendemail sm = new Sendemail();
		
			UserBean user = new UserBean();
			user.setName(request.getParameter("username"));
			user.setEmail(request.getParameter("email"));
			user.setAddress(request.getParameter("address"));
			user.setPassword(pwd);
			user.setMobile(request.getParameter("mobile"));
			
		 
			boolean test = sm.sendEmail(user);
			if(test==true) {
				
				HttpSession session = request.getSession();
				session.setAttribute("authcode", user);
				System.out.println("Email Sent successfully");
			}
			dao.addUser(user);
		//	redirect = "/index.jsp";
			//request.setAttribute("users", dao.getAllUsers());
			System.out.println("Record Added Successfully");

		RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
		rd.forward(request, response);
		}
 }
}
//	}else if (operation.equalsIgnoreCase("insert")) {
//		String pwd = request.getParameter("password");
//		int pawrd = Integer.parseInt(pwd);
//		
//		UserBean user = new UserBean();
//		user.setName(request.getParameter("username"));
//		user.setPassword(pawrd);
//	
//		dao.addUser(user);
//		//redirect = "/listUser.jsp";
//		//request.setAttribute("users", dao.getAllUsers());
//		System.out.println("Record Added Successfully");
//
//		RequestDispatcher rd = request.getRequestDispatcher("/listUser1.jsp");
//		rd.forward(request, response);
		