<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dto.HistoryDto" %>
     <%@page import="java.util.ArrayList" %>
       <%@page import="com.bl.HistoryBl" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
</style>
<meta charset="ISO-8859-1">
<title>History</title>
</head>
<body>
<h3>Purchase History</h3>
<table border="1" allign="center" >
<tr><th>Product No</th><th>Card no</<th><th>Purchase date</th><th>Rice</<th><th>Wheat</th><th>Sugar</th></tr>
 <%
 ArrayList<HistoryDto> historyList=HistoryBl.getHistory();
 for(HistoryDto history : historyList)
{
	 
%>
<tr>
<td ><%=history.getPurchaseid() %></td>
<td ><%=history.getCardno() %></td>
<td ><%=history.getPurchasedate() %></td>
<td ><%=history.getRiceqty() %></td>
<td ><%=history.getWheatqty() %></td>
<td ><%=history.getSugarqty() %></td>
 </tr>
 <%
 }
 %>
</table>
</body>
</html>