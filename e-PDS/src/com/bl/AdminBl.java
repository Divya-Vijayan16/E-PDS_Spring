package com.bl;

import com.dao.AdminDao;


import com.dto.AdminLogin;

public class AdminBl {
	public static AdminLogin validateAdmin(AdminLogin user1)
	{
		AdminLogin user2=null;
		
		try
		{
			user2=AdminDao.validateAdmin(user1);
			
		}
		catch(Exception e)
		{
			System.out.println("**Error** AdminBl:validateAdmin "+e.getMessage());
		}
		
	return user2;
	}



}
