<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dto.ShopkeeperLogin" %>
    <%@ page import="com.bl.*" %>
    <%@ page import="com.dao.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
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
    <title>Shopkeeper Login</title>
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
                              ShopkeeperLogin user1=null;
                              ShopkeeperLogin user2=null;
                        	  
                          
                              try
                           		{
                        	   message="";
                        	   
                        	  username=request.getParameter("txtname");
                        	  password=request.getParameter("txtpass");
                        	  
                        	  user1= new ShopkeeperLogin();
                        	  user1.setUshopid(username);
                        	  user1.setPshopid(password);
                        	  
                        	  user2=ShoploginBl.validateAdmin(user1);
                        	 // out.println(user2.getSUser_ID());
                        	  
                        	  if(user2!=null)
                        	  {
                        		  session.setAttribute("username", user2.getUshopid());
                        		  session.setAttribute("password", user2.getPshopid());
                        		  /* System.out.println("success"); */
                        		  response.sendRedirect("homepage.jsp");
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
    <div class="Adminlogin_header_head"><h1>Shopkeeper Login</h1></div>
    <hr class="Adminlogin_header_hr">
  </div>
  <div class="admin_body">
    <form>
      <div class="admin_body_table">
        <div class="row">
          <div class="col">
              <label class="admin_body_table_contents admin_body_table_col_left">UserName:</label>
          </div>
          <div class="col">
              <input placeholder="username" type="text" name="txtname" value="<%=suserName %>" class="admin_body_table_input admin_body_table_col_right">
          </div>
          <div class="clear"></div>
        </div>
        <div class="row">
            <div class="col">
                <label class="admin_body_table_contents admin_body_table_col_left">Password:</label>
            </div>
            <div class="col">
                <input placeholder="password" type="text"  name="txtpass" value="<%=spassword %>" class="admin_body_table_input admin_body_table_col_right">
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