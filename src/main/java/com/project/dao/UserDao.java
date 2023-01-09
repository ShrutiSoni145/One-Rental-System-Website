package com.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.project.bean.UserBean;
import com.project.dbconnection.ConnectionProvider;


public class UserDao {
	private Connection conn;

    public UserDao() {
    	conn = ConnectionProvider.getConnection();
    }
	public void addUser(UserBean userBean) {
		
		try {
        	String sql = "INSERT INTO tab(username,password,emailId,address,mobile)" +" VALUES (?, ?, ?, ?, ? )";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, userBean.getName());
            ps.setString(2, userBean.getPassword());
            ps.setString(3, userBean.getEmail()); 
            ps.setString(4, userBean.getAddress());    
            ps.setString(5, userBean.getMobile());    
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }              

		
	}
	public boolean validateUser(String Name1, String passw) {
		String UName =Name1;
		String Upassw=passw;
        try {
        	String sql = "SELECT username,password From tab WHERE username=? and password=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, UName );
            ps.setString(2, Upassw);

            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
            	return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
	
	
	public boolean validateAdmin(String Name1, String passw) {
		String UName =Name1;
		String Upassw=passw;
        try {
        	String sql = "SELECT username,password From tab WHERE username=? and password=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, UName );
            ps.setString(2, Upassw);

            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
            	return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
	
	 public void removeUser(String username) {
	        try {
	        	String sql = "DELETE FROM tab WHERE username=?";
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setString(1, username);
	            ps.executeUpdate();

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	      }

	    public void editUser(UserBean userBean) {    	
	    	try {
	    		String sql = "UPDATE tab SET username=?,emailId=?,address=?,mobile =?" +
	            " WHERE username=?";
	            PreparedStatement ps = conn.prepareStatement(sql);  
	            ps.setString(1, userBean.getName());
	           // ps.setString(2, userBean.getPassword());
	            ps.setString(2, userBean.getEmail()); 
	            ps.setString(3, userBean.getAddress());    
	            ps.setString(4, userBean.getMobile());  
	            ps.setString(5, userBean.getName());
	            ps.executeUpdate();
	            
	            
	            
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	    public UserBean getUserByusername(String username) {
	    	  System.out.println(username);
	    	UserBean userBean = new UserBean();
	        try {
	        	String sql = "SELECT * FROM tab WHERE username=?";
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setString(1, username);
	            ResultSet rs = ps.executeQuery();
	            System.out.println("rs value"+rs);

	            if (rs.next()) {
	                userBean.setName(rs.getString("username"));
	            	userBean.setAddress(rs.getString("address"));
	            	userBean.setEmail(rs.getString("emailId"));
	            	userBean.setMobile(rs.getString("mobile"));
	  	            
	  	            ps.executeUpdate();

	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        System.out.println(userBean.getEmail());
	        return userBean;
	    }
	    public List<UserBean> getAllUsers() {
	        List users = new ArrayList();
	        try {
	        	String sql = "SELECT * FROM tab";
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	                UserBean userBean = new UserBean();
	                userBean.setName(rs.getString("username"));
	                userBean.setAddress(rs.getString("address"));
	                userBean.setEmail(rs.getString("emailId"));  
	                userBean.setMobile(rs.getString("mobile"));  
	                users.add(userBean);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return users;
	}
}