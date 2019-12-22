<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ page import="com.dao.DBHelper" %>
    <%@ page import=" java.sql.Connection" %> 
	<%@ page import ="java.sql.PreparedStatement" %>
   <%@ page import =" java.sql.ResultSet" %>
  <%@ page import =" java.sql.Statement" %>
  <%@ page import="com.bl.*" %>
  <%@ page import="com.dao.*" %>
  <%@ page import="com.dto.*" %>
 
<!doctype html>
<html>
<head>
<script type="text/javascript" src="../js/validation.js"></script>
<meta charset="UTF-8">
<title>NEW CUSTOMER REGISTRATION</title>



</head>

<body>
<% Connection con=DBHelper.getConnection();
Statement statement=con.createStatement();
ResultSet resultset=statement.executeQuery("select * from shopDetails");
%>

<table width="100%" height="688" border="0">
  <tbody>
    <tr>
      <td height="684" align="center" valign="top"><table width="100%" border="0">
        <tbody>
          <tr>
            <td height="138" align="center" valign="middle" bgcolor="#E7BF09"><h1 style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif; font-size: xx-large;">NEW CUSTOMER REGISTER</h1></td>
          </tr>
         
                <tr>
                  <td height="33" align="center" valign="middle">
					    <form method="post" action="" onsubmit="return validate()"> 

					    <table width="100%" border="0">
					      <tbody>
					     
					          
					        <tr>
					          <td width="11%" height="30">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="17%" align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Name</td>
					          <td width="1%">&nbsp;</td>
					          <td width="16%" align="left" valign="middle">
					            <input type="text" name="txtName" id="txtName" ><span id="etxtName" style="color:red; ">name should not be empty</span></td>
					         <td width="2%">&nbsp;</td>
					          <td width="2%">&nbsp;</td>
					          </tr>
					          
					           <tr>
					          <td width="11%" height="30">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="17%" align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Email</td>
					          <td width="1%">&nbsp;</td>
					          <td width="16%" align="left" valign="middle">
					            <input type="email" name="txtEmail" id="txtEmail" ><span id="etxtEmail" style="color:red; ">Email should e i format</span></td>
					         <td width="2%">&nbsp;</td>
					          <td width="2%">&nbsp;</td>
					          </tr>
					           
					           <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Phone Number</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtPhone" id="txtPhone" maxlength="10" ><span id="etxtPhone" style="color:red; ">phone number should be 9 numbers</span></td>
					       
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					          
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">No of family members				          </td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtNofam" id="txtNofam" ><span id="etxtNofam" style="color:red; ">field should ot e empty</span></td>
					         
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					          
					          <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">City					          </td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtCity" id="txtCity" ></td>
					         
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					          
					          <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Area 
					          </td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><select name="area">
					          <% while(resultset.next())
								{%>
								<option><%=resultset.getString(3) %></option>
								<%} %>
								
					          </select>	</td>
					         
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					          
					          <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">State				          </td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtState" id="txtState" value="kerala" readonly="readonly" ></td>
					          <%-- <td align="left" valign="middle" style="color: #F70509"><%=eStudent_name%>
					          <span id="eStudent_name" style="color:red; visibility:hidden">name should not be empty</span>
					          </td> --%>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					          
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Pincode			          </td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtPincode"  id="txtPincode"></td>
					         
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					          
					   
					          
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Family Income</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtIncome" id="txtIncome" ></td>
					       
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					          
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="submit" name="submit" id="submit" value="Submit"></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					          
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
                  <td align="center" valign="middle" bgcolor="#E7BF09">epds &copy;2018</td>
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
