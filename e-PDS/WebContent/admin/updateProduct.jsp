<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dao.DBHelper.*" %>
    <%@ page import="com.dao.AllotpDao" %>
    <%@ page import= "java.util.ArrayList" %>
    <%@ page import="com.dto.AllotProduct" %>
    <%@ page import="com.dto.AllotProduct" %>
    <%@ page import="com.bl.AllotBl" %>
<!DOCTYPE html>
<html>
<head> 
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String shopNo=request.getParameter("shno");
String whqty=request.getParameter("whqty");
String riceqty=request.getParameter("riceqty");
String sugarqty=request.getParameter("sugarqty");
%>
<h1>ShopID:<%=shopNo %></h1>
<form>
<input type="hidden" name="txtshopno" value="<%=shopNo %>" >

<table border="1">

<tr>
<th>Product</th>
<th>Quantity</th>
<th>Weight</th>
</tr>
<tr>
<td>Rice</td>
<td><input type="text" name="txtrice" placeholder="<%=riceqty%>" ></td>
<td>kg</td>
</tr>
<tr>
<td>Wheat</td>
<td><input type="text" name="txtwheat"  placeholder="<%=whqty%>"></td>
<td>kg</td></tr>
<tr><td>sugar</td>
<td><input type="text" name="txtsugar"  placeholder="<%=sugarqty%>" ></td>
<td>kg</td></tr>

<tr><td><input type="submit" name="submit" value="Allot"></td></tr>
</table>
</form>
<%
if(request.getParameter("submit")!=null)
{
String shopno=request.getParameter("txtshopno");
String rice=request.getParameter("txtrice");
String wheat=request.getParameter("txtwheat");
String sugar=request.getParameter("txtsugar");
try
{
	int result=0;
	AllotProduct product=new AllotProduct();
	product.setProductNo(shopno);
	product.setRiceQty(rice);
	product.setWheatQty(wheat);
	product.setSugarQty(sugar);
	result=AllotBl.product_update(product);
	if(result>0)
	{
		%>
		<!-- <script>
		alert(updated successfully);
		</script> -->
		<% 
		response.sendRedirect("adminhome.jsp");
	 }
	else
	{
		out.println("failed");
	}	
}
catch(Exception e)
{
	e.printStackTrace();
}
}
%>
</body>
</html>