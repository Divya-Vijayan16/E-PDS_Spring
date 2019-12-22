package com.dao;

import java.util.Random;

public class ApplicationHelper {
	public static String generateShopNumber() {
		  
		   String a="SH/";
		   int minimum=0001;
		   int maximum=9999;
		   Random rn = new Random();
		   int range = maximum - minimum + 1;
		   int randomNum =  rn.nextInt(range) + minimum;
		   return a+""+randomNum;
		 }

}
