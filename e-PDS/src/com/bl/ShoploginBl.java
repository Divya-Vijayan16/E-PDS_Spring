package com.bl;

import com.dao.ShopkeeperDao;
import com.dto.ShopkeeperLogin;

public class ShoploginBl {
	public static ShopkeeperLogin validateAdmin(ShopkeeperLogin user1)
	{
		ShopkeeperLogin user2=null;
		
		try
		{
			 System.out.println("bl class");
			user2=ShopkeeperDao.validateAdmin(user1);
			
		}
		catch(Exception e)
		{
			System.out.println("**Error** AdminBl:validateAdmin "+e.getMessage());
		}
		
	return user2;
	}




}
