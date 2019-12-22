<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dto.*" %>
    <%@ page import="com.bl.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
				<%! 
				String euserName,epassword;
				boolean sErrorFlag=false;
				String suserName,spassword;
				
				
                %>
                
                  <%
                  if(request.getParameter("submit")==null)
                  {
                	  
                	  euserName="";
                	  epassword="";
                	  suserName="";
                	  spassword="";
                  }
                  if(request.getParameter("submit")!=null)
                  {
                	  
                	  euserName="";
                	  epassword="";
                	  suserName="";
                	  spassword="";
                	  
                	  try
                	  {
                		  suserName=request.getParameter("txtname");
                		  spassword=request.getParameter("txtpass");
                		  if(suserName.equals(""))
                		  {
                			  euserName="username should not null";
                			  //out.println(suserName);
                			  sErrorFlag=true;
                		  }
                		  if(spassword.equals(""))
                		  {
                			  epassword="password should not null";
                			  sErrorFlag=true;
                		  }
                		  if(sErrorFlag==false)
                		  {
                			  String message=""; 
                              String username,password;
                              AdminLogin user1=null;
                              AdminLogin user2=null;
                        	  
                          
                              try
                           		{
                        	   message="";
                        	   
                        	  username=request.getParameter("txtname");
                        	  password=request.getParameter("txtpass");
                        	  
                        	  user1= new AdminLogin();
                        	  user1.setUserName(username);
                        	  user1.setPassword(password);
                        	  
                        	  user2=AdminBl.validateAdmin(user1);
                        	 // out.println(user2.getSUser_ID());
                        	  
                        	  if(user2!=null)
                        	  {
                        		  session.setAttribute("username", user2.getUserName());
                        		  session.setAttribute("password", user2.getPassword());
                        		 // System.out.println("successdfjjdnj");
                        		  
                        		  System.out.println("success");
                        		  
                        		  
                        	  
                        	  }
                        	  else
                        	  {
                        		  message="wrong user id or password";
                        		 // System.out.println("wrong");
                        	  }
                        	   
                           
                          }
                          
                          
                          catch(Exception e)
                          {
                        	  System.out.println("login failed");
                          }
                			  
                		  }
                		  
                		  
                	  }
                	  catch(Exception e)
                	  {
                		  System.out.println("submit error");
                	  }
                  }
                   
                  
                  %>
<form action="" >
<label>Username:</label><input type="text" name="txtname" value=<%=suserName %>><span><%=euserName %></span><br/>
<label>Password:</label><input type="text"  name="txtpass" value=<%=spassword %> ><span><%=epassword %></span><br/>
<button type="submit" name="submit" id="submit">Login</button>
</form>
</body>
</html>