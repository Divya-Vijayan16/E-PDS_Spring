<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dto.SupplyProduct" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="com.bl.SupplyBl" %>
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
<form action="">
Enter Card No:<input type="text" name="cno"><br/><br/>

<%String cadn=request.getParameter("cno");
%>
<input type="submit" name="view">
<%
if(request.getParameter("view")!=null)
{
SupplyProduct st=null;
String s1=request.getParameter("cno");
st= SupplyBl.getProducts(s1);
if(st!=null )
{
%>
<h1>Customer Details</h1>

<table border="1">
<tr>
<th>ShopNo</th>
<th>CardNo</th>
<th>Name</th>
<th>No:of family members</th>
<th>City</th>
<th>State</th>
<th>Pincode</th>
<th>Income</th>
<th>Category</th>
</tr>


   <tr>
 <td height="30"><%=st.getShopNo()%></td>
 <td><%=st.getCardNo() %></td>
 <td><%=st.getName() %></td>
 <td><%=st.getNoofmembers() %></td>
 <td><%=st.getCity()%></td>
 <td><%=st.getState() %></td>
 <td><%=st.getPincode() %></td>
 <td><%=st.getIncome() %></td>
 <td><%=st.getCategory() %></td>
</tr>
</table>
 <%
session.setAttribute("cdetails",st); 
 %>
 <a href="supplyproduct.jsp">Allot Products</a>
 <%  
}
else
 {
 %>
 <h1>there is no record</h1>
 <%
 }
}
%>
</form>

</body>
</html>