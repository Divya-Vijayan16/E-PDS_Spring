 package com.bl;
import java.util.ArrayList;
import com.dao.AllotpDao;
import com.dto.AllotProduct;
import com.dto.ShopstockDetails;

public class AllotBl {
	public  static ArrayList<AllotProduct> getProducts()
	{
		ArrayList<AllotProduct >details=null;
		
		 
		try
		{
			
			details=AllotpDao.getProducts();
			
		}
		catch(Exception e)
 		{
			System.out.println("error:  AllotpDao:ShopstockDetails_getproduct"+e.getMessage());
		}
		return details;
	}
	public static int product_update(AllotProduct product) {
		int result=0;
		try {
			result=AllotpDao.product_update(product);
		}
		catch (Exception e) {
			System.out.print("Error: productupdateBl :product_update"+e.getMessage());
		}
		return result;
	}
	
}
