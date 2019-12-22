package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.dto.HistoryDto;


public class HistoryDao {

	public static ArrayList<HistoryDto> getHistorys() {
		ArrayList<HistoryDto> historyList=null;
		Connection con=null;
		Statement statement=null;
		ResultSet resultSet;
		try
		{
			historyList=new ArrayList<HistoryDto>();
			String sql="select * from CUSTOMERPURCHASED order by PURCHASEID";
			con=DBHelper.getConnection();
			statement =con.createStatement();
			resultSet=statement.executeQuery(sql);
			while(resultSet.next())
			{
				HistoryDto history = new HistoryDto();
				history.setPurchaseid(resultSet.getInt("purchaseid"));
				history.setCardno(resultSet.getInt("cardno"));
				history.setPurchasedate(resultSet.getString("purchasedate"));
				history.setRiceqty(resultSet.getInt("riceqty"));
				history.setWheatqty(resultSet.getInt("wheatqty"));
				history.setSugarqty(resultSet.getInt("sugarqty"));
				historyList.add(history);
			}
			resultSet.close() ;
	        statement.close();
	        con.close();
	}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return historyList;
	}

	
}
