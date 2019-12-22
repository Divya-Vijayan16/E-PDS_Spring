package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.dto.CustomerRegister;

public class CustomerReg {
	public static int customer_insert(CustomerRegister cr)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con=null;
		//System.out.println("customer reg dao");
		try
		{
			con=DBHelper.getConnection();
			//System.out.println("insert query");
			query="INSERT INTO CUSTOMERDETAILS(name,email,phonenumber,noofmembers,city,area,state,pincode,income,status) VALUES(?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(query);
			//System.out.println(cr.getName());
			ps.setString(1,cr.getName());
			ps.setString(2, cr.getEmail());
			ps.setString(3, cr.getPhoneNumber());
			ps.setString(4, cr.getNoofmembers());
			ps.setString(5, cr.getCity());
			ps.setString(6, cr.getArea());
			ps.setString(7, cr.getState());
			ps.setString(8, cr.getPincode());
			ps.setString(9, cr.getIncome());
			ps.setString(10, "0");
			
			//System.out.println("insert query");
			
		

			result=ps.executeUpdate();
			ps.close();
			con.close();
			
			
		}
		catch(Exception e)
 		{
			System.out.println("error:  customerReg:customer_insert"+e.getMessage());
		}
		return result;
	}

}
