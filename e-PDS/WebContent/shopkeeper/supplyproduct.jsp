<%@page import="com.bl.SupplyBl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dto.SupplyProduct" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
SupplyProduct st=null;
st=new SupplyProduct();
st=(SupplyProduct)session.getAttribute("cdetails");
%>
<table border="1">
<tr>
<th>Card number</th>
<th>Date</th>
<th>Rice</th>
<th>Wheat</th>
<th>Sugar</th>
</tr>
<tr>
<td><%=st.getCardNo() %></td>
<td><%=st.getDate() %></td>
<td><%=st.getRiceqty() %></td>
<td><%=st.getWheatqty() %></td>
<td><%=st.getSugarqty() %></td>
</tr>
</table>
<form action="">
<button name="allot" type="submit">Allot</button>
<%
if(request.getParameter("allot")!=null){
	
	int r=SupplyBl.product_insert(st);
	out.print(r);
}
%>
</form>
</body>
</html>