<%@ include file="conn.jsp" %>
<%@ include file="navbar.jsp" %>
<%
String query="update customerinfo set firstname=?,lastname=?,address=?,phone=?,email=? where cid=?";
PreparedStatement ps=cn.prepareStatement(query);
ps.setString(1,request.getParameter("firstname"));
ps.setString(2,request.getParameter("lastname"));
ps.setString(3,request.getParameter("address"));
ps.setString(4,request.getParameter("phone"));
ps.setString(5,request.getParameter("email"));
ps.setString(6,request.getParameter("cid"));
ps.executeUpdate();
response.sendRedirect("customer-list.jsp");
%>
