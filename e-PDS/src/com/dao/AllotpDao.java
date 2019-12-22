package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import com.dto.AllotProduct;
import com.dto.ShopAdd;
import com.dto.ShopstockDetails;
import com.dao.DBHelper;

public class AllotpDao { 
	public static int product_insert(ShopAdd shopNo)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con=null;
		try
		{
			con=DBHelper.getConnection();
			query="INSERT INTO PRODUCTDETAILS(PRODUCTNO) VALUES(?)";
			ps=con.prepareStatement(query);
			System.out.println(shopNo.getShopNo());
			ps.setString(1,shopNo.getShopNo());
			result=ps.executeUpdate();
			ps.close();
			con.close();
			
			
		}
		catch(Exception e)
 		{
			System.out.println("error:  AllotpDao:product_insert"+e.getMessage());
		}
		return result;
	}
	public  static ArrayList<AllotProduct> getProducts()
	{
		ArrayList<AllotProduct>details=null;
		Connection con=null;
		Statement statement=null;
		ResultSet resultSet=null;
		try
		{
			String sql="SELECT SHOPDETAILS.*, PRODUCTDETAILS.* from SHOPDETAILS inner join PRODUCTDETAILS on SHOPDETAILS.SHOPNO = PRODUCTDETAILS.PRODUCTNO";
			con=DBHelper.getConnection();
			statement =con.createStatement();
			resultSet=statement.executeQuery(sql);
			details=new ArrayList<AllotProduct>();
			
			while(resultSet.next()) {
				
				AllotProduct  detailslist= new AllotProduct();
				detailslist.setShopNo(resultSet.getString("SHOPNO"));
				detailslist.setCity(resultSet.getString("CITY"));
				detailslist.setArea(resultSet.getString("AREA"));
				detailslist.setRiceQty(resultSet.getString("rice"));
				detailslist.setWheatQty(resultSet.getString("wheat"));
				detailslist.setSugarQty(resultSet.getString("sugar"));
				details.add(detailslist);
				
			}
			con.close();
			
		}
		catch(Exception e)
		{
			System.out.print("Error: getProductsDao :getproducts"+e.getMessage());
		}
		return details;
	}
	public static int product_update(AllotProduct product) {
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con=null;
		try {
			con=DBHelper.getConnection();
			query="update PRODUCTDETAILS set RICE=?,WHEAT=?,SUGAR=? where PRODUCTNO=?";
			ps=con.prepareStatement(query);
			ps.setString(1, product.getRiceQty());
			ps.setString(2,product.getWheatQty());
			ps.setString(3,product.getSugarQty());
			ps.setString(4,product.getProductNo());
			result =ps.executeUpdate();
			ps.close();
			con.close();
		}
		catch(Exception e) {
			System.out.print("Error: ProductDao :product_update"+e.getMessage());
		}
		return result;
	}
	
}

