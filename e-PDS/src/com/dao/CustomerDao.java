package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.dto.CustomerLogin;

public class CustomerDao {

	public static CustomerLogin validateCustomer(CustomerLogin user1)
	{
		Connection con=null;
		Statement statement =null;
		ResultSet resultSet=null;
		CustomerLogin user2=null;
		
		try
		{
			
			
			String sql = "select * from CUSTOMERDETAILS where CARDNUMBER=?";
	        con=DBHelper.getConnection();
	       PreparedStatement ps=null;
	    	ps=con.prepareStatement(sql);
			ps.setString(1,user1.getUsername());
			System.out.println(user1.getUsername());
			  resultSet =ps.executeQuery();
		
	         if(resultSet.next()) {
	        	 
	        	 user2= new CustomerLogin();
	        	 user2.setUsername(resultSet.getString("userName"));
	        	 
	         }
	         
	        
		}
		catch(Exception e)
		{
			System.out.println("**Error** CustomerDao:validateCustomer "+e.getMessage());
		}
		
	return user2;
	}
	
}
