<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dto.*" %>
    <%@ page import="com.bl.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<script type="text/javascript" src="../js/validation.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/css/style.css" type="text/css" media="all" />
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
    <script type="text/javascript" src="js/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="js/js/popper.min.js"></script>
    <script type="text/javascript" src="js/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/js/cufon-yui.js"></script>
    <script type="text/javascript" src="js/js/MyriadPro.font.js"></script>
<script type="text/javascript" src="js/js/ArialBold.font.js"></script>
    <title>customer Login</title>
</head>
<body>
<%! 
				String euserName;
				boolean sErrorFlag=false;
				String suserName;
				
				
                %>
                
                  <%
                  /* if(request.getParameter("submit")==null)
                  {
                	  
                	  euserName="";
                	  suserName="";
                	 
                  } */
                  if(request.getParameter("submit")!=null)
                  {
                	  
                	  euserName="";
                	 
                	  suserName="";
                	  
                	  
                	  try
                	  {
                		  suserName=request.getParameter("txtname");
                		  
                		  if(suserName.equals(""))
                		  {
                			  euserName="username should not null";
                			  //out.println(suserName);
                			  sErrorFlag=true;
                		  }
                		  
                		  if(sErrorFlag==false)
                		  {
                			  String message=""; 
                              String username;
                              CustomerLogin user1=null;
                              CustomerLogin user2=null;
                        	  
                          
                              try
                           		{
                        	   message="";
                        	   
                        	  username=request.getParameter("txtname");
                        	
                        	  
                        	  user1= new CustomerLogin();
                        	 user1.setUsername(username);
                        	  
                        	  
                        	  user2=CustomerBl.validateCustomer(user1);
                
                        	  
                        	  if(user2!=null)
                        	  {
                        		  session.setAttribute("username", user2.getUsername());
                        		  /* System.out.println("success"); */
                        		  response.sendRedirect("customerhome.jsp");
                        	  }
                        	  else
                        	  {
                        		  message="wrong user id or password";
                        		  %>
                        		  <h2>wrong user id or password</h2>
                        		 // System.out.println("wrong");
                        	  <% }
                        	   
                           
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
    <!-- START PAGE SOURCE -->
<div id="header">
    <div class="shell">
      <h1 id="logo"><a href="#">WCSST 37</a></h1>
      <div id="navigation">
        <ul>
          <li><a href="#" class="active">HOME</a></li>
          <li><a href="#">ABOUT</a></li>
          <li><a href="#">GALLERY</a></li>
          <li><a href="#">RESERVATION</a></li>
          <li><a href="#">CONTACT</a></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="Adminlogin_header">
    <div class="Adminlogin_header_head"><h1>Customer Login</h1></div>
    <hr class="Adminlogin_header_hr">
  </div>
  <div class="admin_body">
     <form method="post" action="">
      <div class="admin_body_table">
        <div class="row">
          <div class="col">
              <label class="admin_body_table_contents admin_body_table_col_left">Card Number:</label>
          </div>
          <div class="col">
              <input placeholder="card number" type="text" name="txtname"  class="admin_body_table_input admin_body_table_col_right"><span id="etxtname" style="color:red;"><%= euserName %></span>
          </div>
          <div class="clear"></div>
        </div>
        
          <button type="submit" name="submit" id="submit" class="admin_login_button">Sumbit</button>
      </div>      
    </form>
  </div>
  <div class="footer">
    <div class="shell">
      <p class="lf">Copyright &copy; 2010 <a href="#">SiteName</a> - All Rights Reserved</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</body>
</html>