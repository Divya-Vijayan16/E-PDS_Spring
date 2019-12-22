package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.Connection;
import com.dto.ShopAdd;

public class ShopDao {
	public static int insertShop(ShopAdd shopadd)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		try
		{
			
			con=DBHelper.getConnection();
			query = "INSERT INTO shopDetails VALUES (?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1, shopadd.getShopNo());
			ps.setString(2, shopadd.getCity());
			ps.setString(3, shopadd.getArea());
			ps.setString(4, shopadd.getShopNo());
			result = ps.executeUpdate();
			//System.out.print(result);
			ps.close();
			con.close();
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("**Error** ShopDao:insertshop "+e.getMessage());
		}
		return result;
	}
	
	public static ArrayList<ShopAdd> getShops()
	{
		ArrayList<ShopAdd> shopList=null;
		Connection con=null;
		Statement statement=null;
		ResultSet resultSet;
		try
		{
			shopList=new ArrayList<ShopAdd>();
			String sql="select * from shopDetails order by shopno";
			con=DBHelper.getConnection();
			statement =con.createStatement();
			resultSet=statement.executeQuery(sql);
			while(resultSet.next())
			{
				ShopAdd shopadd = new ShopAdd();
				shopadd.setShopNo(resultSet.getString("shopNo"));
				shopadd.setCity(resultSet.getString("city"));
				shopadd.setArea(resultSet.getString("area"));
				shopList.add(shopadd);
			}
			resultSet.close();
	        statement.close();
	        con.close();
	}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return shopList;
	}

}

