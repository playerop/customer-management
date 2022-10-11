<%@ include file="conn.jsp" %>
<%
String query="select * from customerinfo where cid=?";
PreparedStatement ps=cn.prepareStatement(query);
String id=request.getParameter("cid");
ps.setString(1,id);
ResultSet rst=ps.executeQuery();
if(rst.next())
{
	%>
	<%@ include file="navbar.jsp" %>
	<form action='delete-customer-record.jsp'>
	<table class='tar' border='1' cellpadding='3vw'>
	 <tr style='background-color:orange'>
	  <td colspan="2" align="center">
	   <label class='lah'>Customer Details</label>
	  </td>
	 </tr>
	 <tr>
	  <th align="left">Customer Id</th>
	  <td><%=rst.getString(1)%><input type='hidden' name='cid' value='<%=rst.getString(1)%>'>
	  </td>
	 </tr>
	 <tr>
	  <th align="left">Customer first name</th>
	  <td><%=rst.getString(2)%></td>
	 </tr>
	 <tr>
	  <th align="left">Customer last name</th>
	  <td><%=rst.getString(3)%></td>
	 </tr>
	 <tr>
	  <th align="left">Customer address</th>
	  <td><%=rst.getString(4)%></td>
	 </tr>
	 <tr>
	  <th align="left">Customer phone</th>
	  <td><%=rst.getString(5)%></td>
	 </tr>
	 <tr>
	  <th align="left">Customer email</th>
	  <td><%=rst.getString(6)%></td>
	 </tr>
	 <tr>
	  <td colspan="2" align="right">
	   <button class='btr' style='background-color:rgb(255,0,0)'>Confirm Delete</button>
	  </td>
	 </tr>
	</table>
	</form>
	<%
	return;
}
%>
<jsp:include page="delete.jsp"/>
<div class='dv20'>
   <label class='lam' style='color:red'>Customer with id <%=id%> not found</label>
</div>
