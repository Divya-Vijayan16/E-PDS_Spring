package com.bl;

import java.util.ArrayList;

import com.dao.HistoryDao;
import com.dto.HistoryDto;



public class HistoryBl {
	public static ArrayList<HistoryDto> getHistory()
	{
		 ArrayList<HistoryDto> historyList=null;
		 
		
		try
		{
			
			historyList=HistoryDao.getHistorys();
			
		}
		catch(Exception e)
 		{
			System.out.println("error:  EmployeeDao:employee_getEmployee"+e.getMessage());
		}
		return historyList;
	}


}
