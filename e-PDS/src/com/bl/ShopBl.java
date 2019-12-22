package com.bl;

import java.util.ArrayList;


import com.dao.AllotpDao;
import com.dao.ShopDao;
import com.dto.ShopAdd;

public class ShopBl {
	public static int addShop(ShopAdd shopNo)
	{
		int result=0;
		try
		{
			result =ShopDao.insertShop(shopNo);
			AllotpDao.product_insert(shopNo);
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("**Error** StudentBL:addStudent "+e.getMessage());
		}
		return result;
	}
	
	public static ArrayList<ShopAdd> getShopes()
	{
		 ArrayList<ShopAdd> shopList=null;
		
		try
		{
			
			shopList=ShopDao.getShops();
			
		}
		catch(Exception e)
 		{
			System.out.println("error:  EmployeeDao:employee_getEmployee"+e.getMessage());
		}
		return shopList;
	}

}
