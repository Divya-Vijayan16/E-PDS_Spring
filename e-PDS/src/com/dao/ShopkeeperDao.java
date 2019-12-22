package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.dto.ShopkeeperLogin;
public class ShopkeeperDao {
	public static ShopkeeperLogin validateAdmin(ShopkeeperLogin user1)
	{
		Connection con=null;
		Statement statement =null;
		ResultSet resultSet=null;
		ShopkeeperLogin user2=null;
		
		try
		{
			 System.out.println("dao class");
			
			String sql = "SELECT * FROM SHOPDETAILS WHERE SHOPNO=? AND PASSWORD=?";
	        con=DBHelper.getConnection();
	       PreparedStatement ps=null;
	    	ps=con.prepareStatement(sql);
	
			ps.setString(1,user1.getUshopid());
			ps.setString(2,user1.getPshopid());
			System.out.println(user1.getUshopid());
			System.out.println(user1.getPshopid());
			
			  resultSet =ps.executeQuery();
			 
		
	         if(resultSet.next()) {
	        	 
	        	 user2= new ShopkeeperLogin();
	        	 System.out.println("dao class");
	        	 user2.setUshopid(resultSet.getString("ushopid"));
	        	 user2.setPshopid(resultSet.getString("pshopid"));
	        	 
	        	 
	         }
	         
	        
		}
		catch(Exception e)
		{
			System.out.println("**Error** ShopkeeperDao:validateAdmin "+e.getMessage());
		}
		
	return user2;
	}
	
	
	

}



