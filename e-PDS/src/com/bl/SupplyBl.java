package com.bl;

import com.dao.SupplyDao;

import com.dto.SupplyProduct;
import java.time.LocalDate;
import java.time.Month;
import java.time.format.DateTimeFormatter;
import java.time.format.FormatStyle;
public class SupplyBl {
	public static SupplyProduct getProducts(String cardno)
	{
	SupplyProduct st=null;
	try
	{
		//System.out.println("supplydao page");
	 st = SupplyDao.getProducts(cardno);
	 String category=st.getCategory();
	 st.setRiceqty(Integer.toString(15));
	 st.setWheatqty(Integer.toString(15));
	 st.setSugarqty(Integer.toString(5));
	 String date=dat();
	 st.setDate(date);
	// System.out.println(category);
			  if(category.equals("bpl")) 
			  { 
			  st.setRiceqty(Double.toString((Double.parseDouble(st.getRiceqty())+(Double.parseDouble(st.getRiceqty())*45)/100)));
			  st.setWheatqty(Double.toString((Double.parseDouble(st.getWheatqty())+(Double.parseDouble(st.getWheatqty())*45)/100)));
			  st.setSugarqty(Double.toString((Double.parseDouble(st.getSugarqty())+(Double.parseDouble(st.getSugarqty())*45)/100)));
			  }
			 
	}
	catch(Exception e)
	{
	System.out.println("**Error** StudentBL:getStudent "+e.getMessage());
	}

	return st;
	}
	
	public static String dat() {
		System.out.println("hhjhh");
		 LocalDate currentDate = LocalDate.now();
		 String formattedDate = currentDate.format(DateTimeFormatter.ofLocalizedDate(FormatStyle.LONG));
		 return  formattedDate;
	 }
	public static int product_insert( SupplyProduct product)
	{
		int result=0;
		String date;
		SupplyProduct st=product;
		try
		{
			date=dat();
			System.out.println("**Error**"+date);
			st.setPurchaseDate(date);
			
			result=SupplyDao.product_insert(st);
			
		}
		catch(Exception e)
 		{
			System.out.println("error:  SupplyBl:product_insert"+e.getMessage());
		}
		return result;
	}
}
