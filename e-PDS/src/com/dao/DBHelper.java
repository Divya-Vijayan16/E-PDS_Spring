package com.dao;
import java.sql.Connection;
import java.sql.DriverManager;

	public class DBHelper {

			public static Connection getConnection()

			{

			Connection con=null;

			try

			{

			Class.forName("oracle.jdbc.driver.OracleDriver");   

			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","demotestdb","1234");    


			}

			catch(Exception e)

			{

			System.out.println("**Error** : DBHelper:getConnection " +e.getMessage());

			}

			return con;

			}


			}


	


