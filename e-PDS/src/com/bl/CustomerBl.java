package com.bl;

/*import com.dao.AdminDao;
import com.dao.AllotpDao;*/
import com.dao.CustomerDao;
import com.dao.CustomerReg;
import com.dto.CustomerLogin;
import com.dto.CustomerRegister;

public class CustomerBl {
	
	public static CustomerLogin validateCustomer(CustomerLogin user1)
	{
		CustomerLogin user2=null;
		
		try
		{
			user2=CustomerDao.validateCustomer(user1);
			
		}
		catch(Exception e)
		{
			System.out.println("**Error** CustomerBl:validateCustomer "+e.getMessage());
		}
		
	return user2;
	}

	public static int customer_insert(CustomerRegister cr)
	{
		int result=0;
		try {
			result=CustomerReg.customer_insert(cr);
			System.out.println("customerbl class");
		}
		catch (Exception e) {
			System.out.print("Error: Customerbl :customer_insert"+e.getMessage());
		}
		return result;
	}
	
}
