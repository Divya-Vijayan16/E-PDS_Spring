<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.ApplicationHelper" %>
    <%@page import="com.dto.ShopAdd" %>
     <%@page import="com.bl.ShopBl" %>
     <%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Shop</title>
</head>
<body>
<%!
  String sCity,sArea; 
  String sShopNo;
  String eCity,eArea,eShopNo;
  boolean ErrorFlag=false;
  boolean sErrorFlag=false;
  int result=0;
  ArrayList<ShopAdd> shopList=ShopBl.getShopes();
%>
<%
sShopNo=ApplicationHelper.generateShopNumber();
if(request.getParameter("submit")==null){
	sCity="";
	 sArea="";
	 eCity="";
	 eArea="";
	 eShopNo="";
}
if(request.getParameter("submit")!=null)
{
	 sCity="";
	 sArea="";
	 sShopNo="";
	 eCity="";
	 eArea="";
	 eShopNo="";
	 try
	 {
		 sShopNo=request.getParameter("txtshopNo");
		 sCity=request.getParameter("txtcity");
		 sArea=request.getParameter("txtarea");
		  if( sShopNo.equals(""))
		 {
			 eShopNo="ID should not be empty";
			 sErrorFlag=true;
			 
		 }
		 if( sCity.equals(""))
		 {
			 eCity="City field should not be empty";
			 sErrorFlag=true;
			 
		 }
		 if( sArea.equals(""))
		 {
			 eArea="Area field should not be empty";
			 sErrorFlag=true;
			 
		 } 
		 if(!sErrorFlag)
		 {
			 
			 ShopAdd shopadd=null;
			 shopadd=new ShopAdd();
			 shopadd.setShopNo(sShopNo);
			 shopadd.setCity(sCity);
			 shopadd.setArea(sArea);
			 
			 result=ShopBl.addShop(shopadd);
			 
			 if(result>0)
			 {
				 //out.print(result+"not found");
				 session.setAttribute("message", "Shop details added");
				%>
				<script>
				alert("successfully added");
				</script>
			 <% 
			 response.sendRedirect("adminhome.jsp");
			 }
			 else{
				 out.print("fail");
			 }
			 
		 }
		 
	 }
	 catch(Exception e)
	 {
		 
		 out.println("error");
		 e.printStackTrace(); 
	 }
}
%>
<form name="form1" id="form1" method="post"">
Shop Number:<%=sShopNo %><br>
<input type="hidden" name="txtshopNo" value="<%=sShopNo%>">
<label>City:</label><input type="text" name="txtcity" value=""><span style="color:red;"><%=eCity %></span><br>
<label>Area:</label><input type="text" name="txtarea" value=""><span style="color:red;"><%=eArea %></span><br>
<button type="submit" name="submit">Create</button>
<button type="reset" name="reset">Cancel</button>
</form>
</body>
</html>