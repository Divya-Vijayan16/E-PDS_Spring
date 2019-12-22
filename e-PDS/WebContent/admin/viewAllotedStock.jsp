<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.bl.*" %>
    <%@ page import="com.dao.*" %>
    <%@ page import="com.dto.*" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee</title>
</head>
<body>
<table width="100%" height="688" border="0">
  <tbody>
    <tr>
      <td height="684" align="center" valign="top"><table width="100%" border="0">
        <tbody>
          <tr>
            <td height="138" align="center" valign="middle" bgcolor="#E7BF09"><h1 style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif; font-size: xx-large;">Employee Information System</h1></td>
          </tr>
          <tr>
            <td height="530" align="center" valign="top"><table width="100%" border="0">
              <tbody>
                <tr>
                  <td height="33" align="center" valign="middle">menu</td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">Employee Details </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="color: #F70509">message</td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">
					  <form id="form1" name="form1" method="post">
					    <table width="80%" border="1" align="center" bordercolor="#E7BF09">
					      <tbody style="">
					        <tr>
					          <td width="11%" height="33" align="center" valign="middle" bgcolor="#E7BF09" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">ShopId</td>
					          <td width="16%" align="center" valign="middle" bgcolor="#E7BF09"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">city </span></td>
					          <td width="12%" align="center" valign="middle" bgcolor="#E7BF09"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Area </span></td>
					          <td width="12%" align="center" valign="middle" bgcolor="#E7BF09" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Rice</td>
					          <td width="11%" align="center" valign="middle" bgcolor="#E7BF09"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">wheat</span></td>
					          <td width="20%" align="center" valign="middle" bgcolor="#E7BF09"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Sugar</span></td>
					           <td width="18%" align="center" valign="middle" bgcolor="#E7BF09"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Update</span></td>
					          </tr>
					          <%
					          /* ArrayList<Employee> employees=new ArrayList<Employee>();  */
					          ArrayList<AllotProduct> products=null; 
					          products=AllotBl.getProducts();
					          if(products!=null && (products.size()>0)){
					        	  for(AllotProduct product:products){ 
					          %>
					        <tr>
					          <td height="30"><%=product.getShopNo() %></td>
					          <td><%=product.getCity() %></td>
					          <td><%=product.getArea() %></td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif"><%=product.getRiceQty() %></td>
					          <td><%=product.getWheatQty() %></td>
					          <td><%=product.getSugarQty() %></td>
					          <td align="left" valign="middle"><a href="updateProduct.jsp?shno=<%=product.getShopNo()%>&whqty=<%=product.getWheatQty() %>&riceqty=<%=product.getRiceQty() %>&sugarqty=<%=product.getSugarQty() %>">update</a></td>
					          </tr>
					          <%
					        	  }
					          }
					          else{
					        	  %>
					        	  <tr>
					        	  <td>No Records Found</td>
					        	  </tr>
					        	  <% 
					          }
					          %>
					        </tbody>
					      </table>
						  
						  
                      </form></td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">&nbsp;</td>
                </tr>
              </tbody>
            </table></td>
          </tr>
          <tr>
            <td align="center" valign="top"><table width="100%" border="0">
              <tbody>
                <tr>
                  <td align="center" valign="middle" bgcolor="#000000">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center" valign="middle" bgcolor="#E7BF09">concept solutions &copy;2018</td>
                </tr>
              </tbody>
            </table></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
</body>
</html>