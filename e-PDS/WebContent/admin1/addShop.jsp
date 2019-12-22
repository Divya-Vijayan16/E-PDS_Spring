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
<script type="text/javascript" src="../resources/js/validation.js"></script>
</head>
<body>
<%!
  String sCity,sArea; 
  String sShopNo=ApplicationHelper.generateShopNumber();
  String eCity,eArea,eShopNo;
  boolean ErrorFlag=false;
  boolean sErrorFlag=false;
  int result=0;
  ArrayList<ShopAdd> shopList=ShopBl.getShopes();
%>
<%
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
		 /*  if( sShopNo.equals(""))
		 {
			 eShopNo="ID sould not be empty";
			 sErrorFlag=true;
			 
		 } */
		 if( sCity.equals(""))
		 {
			 eCity="city sould not be empty";
			 sErrorFlag=true;
			 
		 }
		 if( sArea.equals(""))
		 {
			 eArea="area sould not be empty";
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
				 
			 <% }
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
<form name="form1" id="form1" method="post" onsubmit="return validate();">
Shop Number:<%=sShopNo %><br>
<input type="hidden" name="txtshopNo" value="<%=sShopNo%>">
<label>City:</label><input type="text" name="txtcity" value=""> <span><%=eCity %></span><br>
<label>Area:</label><input type="text" name="txtarea" value=""><span><%=eArea %></span><br>
<button type="submit" name="submit">Create</button>
<button type="reset" name="reset">Cancel</button>
</form>
<table border="1" align="center">
  <tr>
  <th>Shop Number</th>
  <th>City</th>
  <th>Area</th>
  </tr>
 <%
 for(ShopAdd shop : shopList)
{
	 
%>
<tr>
<td > <%= shop.getShopNo() %></td>
<td > <%= shop.getCity() %></td>
<td > <%= shop.getArea() %></td>
 </tr>
 <%
 }
 %>
  
</table>
</body>
</html>