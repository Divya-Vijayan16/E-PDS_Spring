<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dao.DBHelper.*" %>
    <%@ page import="com.dao.AllotpDao" %>
    <%@ page import= "java.util.ArrayList" %>
    <%@ page import="com.dto.AllotProduct" %>
    <%@ page import="com.bl.AllotBl" %> 
   <%@ page import=" java.sql.Connection" %> 
	<%@ page import ="java.sql.PreparedStatement" %>
<%@ page import =" java.sql.ResultSet" %>
<%@ page import =" java.sql.Statement" %>
<%@ page import="com.dao.DBHelper" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
String eshop,ewheat,esugar,erice;
boolean sErrorFlag=false;
String sshop,srice,swheat,ssugar;
%>
<% 
Connection con=DBHelper.getConnection();
Statement statement=con.createStatement();
ResultSet resultset=statement.executeQuery("select * from shopDetails");
if(request.getParameter("submit")==null)
{
	  
	    sshop="";
	    srice="";
	    swheat="";
	    ssugar="";
	    eshop="";
	    erice="";
	    ewheat="";
	    esugar="";
}
if(request.getParameter("submit")!=null)
{
	sshop="";
    srice="";
    swheat="";
    ssugar="";
    eshop="";
    erice="";
    ewheat="";
    esugar="";
    try
    {
	  sshop=request.getParameter("shop");
	  srice=request.getParameter("txtrice");
	  swheat=request.getParameter("txtwheat");
	  ssugar=request.getParameter("txtsugar");
	  /*  if(shop.value=="select")
	  {
		  eshop="shold be choose any shop";
		  sErrorFlag=true;
	  }  */ 
	  if(srice.equals(""))
	  {
		  erice="rice should not null";
		  sErrorFlag=true;
	  }
	  if(swheat.equals(""))
	  {
		  ewheat="wheat should not null";
		  sErrorFlag=true;
	  }
	  if(ssugar.equals(""))
	  {
		  esugar="sugar should not null";
		  sErrorFlag=true;
	  }
	  if(!sErrorFlag)
	  {

	int result=0;
	AllotProduct product=new AllotProduct();
	product.setProductNo(sshop);
	product.setRiceQty(srice);
	product.setWheatQty(swheat);
	product.setSugarQty(ssugar);
	result=AllotBl.product_update(product);
	if(result>0)
	{
		/* System.out.println("successfully inserted"); */
		%>
		<script>
		alert("successfully inserted");
		<%
		response.sendRedirect("adminhome.jsp");
		%>
		</script>
		<% 
	 }
	else
	{
		System.out.println("failed");
	}
	  }
}
catch(Exception e)
{
	e.printStackTrace();
}
}
%>
<form action="" method="post">
Select shop no:<select name="shop" required>
<option value="select">select</option>
<% while(resultset.next())
	{%>
	<option><%=resultset.getString(1) %></option>
<%} %>
</select>
<table border="1px">

<tr>
<th>Product</th>
<th>Quantity</th>
<th>Weight</th>
</tr>
<tr>
<td>Rice</td>
<td><input type="text" name="txtrice"><span style="color:red;"><%= erice %></span></td>
<td>kg</td>
</tr>
<tr>
<td>Wheat</td>
<td><input type="text" name="txtwheat"><span style="color:red;"><%= ewheat %></span></</td>
<td>kg</td></tr>
<tr><td>sugar</td>
<td><input type="text" name="txtsugar"><span style="color:red;"><%= esugar %></span></</td>
<td>kg</td></tr>

<tr><td><input type="submit" name="submit" value="Allot"></td></tr>
</table>
</form>
</body>
</html>