<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="com.dto.ShopstockDetails" %>
    <%@ page import="com.bl.AllotBl" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form>
Select shop No:<input type="text" name="txtshop"><br/>
<input type="submit" value="view"><br/>
<input type="reset" value="reset">
<table border="1px">
<tr>
<th>Product</th>
<th>Available Quantity</th>
<th>Alloted Quantity</th>
<th>abcv</th>
</tr>
<%-- <%
String shn=request.getParameter("txtshop");
ArrayList<ShopstockDetails> product=null;
product=AllotBl.getProducts();
if(product!=null && (product.size()>0))
{
	  for(ShopstockDetails products:product)
	  {%>
<tr>
<td height="30"><%=products.getProduct() %></td>
<td><%=products.getAvailQty() %></td>
<td><%=products.getAvailQty() %></td>
<%}
	  }
	  %> --%>

</table>
</form>

</body>
</html>