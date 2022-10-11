<%@ include file="conn.jsp" %>
<%@ include file="navbar.jsp" %>
<%
String query="update customerinfo set firstname=?,lastname=?,address=?,phone=?,email=? where cid=?";
PreparedStatement ps=cn.prepareStatement(query);
ps.setString(1,request.getParameter("fname"));
ps.setString(2,request.getParameter("lname"));
ps.setString(3,request.getParameter("address"));
ps.setString(4,request.getParameter("phone"));
ps.setString(5,request.getParameter("email"));
ps.setString(6,request.getParameter("cid"));
ps.executeUpdate();
%>
<div class='dv'>
  <label class='lam'>Customer record has been updated successfully</label>
</div>