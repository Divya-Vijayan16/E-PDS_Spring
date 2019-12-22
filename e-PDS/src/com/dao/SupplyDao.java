
package com.dao;
import java.sql.Statement;


import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import com.dto.SupplyProduct;


public class SupplyDao {
	public static SupplyProduct getProducts(String cardno)
	{
	Connection con=null;
	Statement statement =null;
	ResultSet resultSet=null;
	SupplyProduct st=null;

	try
	{


	String sql = "SELECT * FROM CUSTOMERDETAILS WHERE CARDNO="+cardno;
	       con=DBHelper.getConnection();
	       statement = con.createStatement();
	       resultSet = statement.executeQuery(sql);
	        if(resultSet.next()) {
	        st = new SupplyProduct();
	        st.setShopNo(resultSet.getString("shopNo"));
	st.setCardNo(resultSet.getString("cardNo"));
	st.setName(resultSet.getString("name"));
	st.setNoofmembers(resultSet.getInt("noofmembers"));
	st.setCity(resultSet.getString("city"));
	st.setState(resultSet.getString("state"));
	st.setPincode(resultSet.getInt("pincode"));
	st.setIncome(resultSet.getInt("income"));
	st.setCategory(resultSet.getString("category"));
	        }
	       
	        return st;
	}
	catch(Exception e)
	{
	System.out.println("**Error** StudentDL:getStudent "+e.getMessage());
	}

	return st;
	}
	public static int product_insert( SupplyProduct product)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con=null;
		try
		{
			con=DBHelper.getConnection();
			query="insert into CUSTOMERPURCHASED(PURCHASEDATE,RICEQTY,WHEATQTY,SUGARQTY,CARDNO) values(?,?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1,product.getPurchaseDate());
			ps.setString(2, product.getRiceqty());
			ps.setString(3, product.getWheatqty());
			ps.setString(4, product.getSugarqty());
			ps.setString(5, product.getCardNo());
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
}
