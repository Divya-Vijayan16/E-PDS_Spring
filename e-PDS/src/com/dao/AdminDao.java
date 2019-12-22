package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import com.dto.AdminLogin;
import com.dto.AllotProduct;
import com.dao.DBHelper;

public class AdminDao {
	public static AdminLogin validateAdmin(AdminLogin user1)
	{
		Connection con=null;
		Statement statement =null;
		ResultSet resultSet=null;
		AdminLogin user2=null;
		
		try
		{
			
			
			String sql = "select * from adminlogin where username=? and password=?";
	        con=DBHelper.getConnection();
	       PreparedStatement ps=null;
	    	ps=con.prepareStatement(sql);
	
			ps.setString(1,user1.getUserName());
			ps.setString(2,user1.getPassword());
			System.out.println(user1.getUserName());
			System.out.println(user1.getPassword());
			  resultSet =ps.executeQuery();
		
	         if(resultSet.next()) {
	        	 
	        	 user2= new AdminLogin();
	        	 user2.setUserName(resultSet.getString("userName"));
	        	 user2.setPassword(resultSet.getString("password"));
	        	 
	         }
	         
	        
		}
		catch(Exception e)
		{
			System.out.println("**Error** AdminDL:validateAdmin "+e.getMessage());
		}
		
	return user2;
	}
	
	
	

}
