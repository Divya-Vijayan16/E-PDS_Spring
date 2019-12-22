<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.DBHelper" %>
    <%@page import="java.sql.Connection" %>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 Connection con=DBHelper.getConnection();
 Statement statement =con.createStatement();
 ResultSet resultset=statement.executeQuery("select * from shopDetails");
%>
select:<select>
<%  while(resultset.next()){ %>
            <option><%= resultset.getString(1)%></option>
        <% } %>
</select>
</body>
</html>