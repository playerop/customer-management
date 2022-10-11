<%@ include file="navbar.jsp" %>
<%@ include file="conn.jsp" %>
<%
String id=request.getParameter("cid");
String sql="select * from customerinfo where cid=?";
PreparedStatement ps=cn.prepareStatement(sql);
ps.setString(1,id);
ResultSet rst=ps.executeQuery();
rst.next();
%>
<html>
 <body>
 <div class='container my-2'>
  <div class='card col-md-10 mx-auto'>
    <div class='card-body'>
     <form action='update-record.jsp'>
      <div class='row'>
       <div class='form-group col-md-10'>
        <label for='cid' class='la'>Enter customer id</label>
        <input type='text' id='cid' value='<%=rst.getString(1)%>' readonly name='cid' class='form-control' required>
       </div>
       <div class='form-group col-md-5'>
        <label for='fname' class='la'>Edit first name</label>
        <input type='text' id='fname' value='<%=rst.getString(2)%>' name='firstname' class='form-control' required>
       </div>
       <div class='form-group col-md-5'>
        <label for='lname' class='la'>Edit last name</label>
        <input type='text' id='lname'  value='<%=rst.getString(3)%>' name='lastname' class='form-control' required>
       </div>
       <div class='form-group col-md-5'>
        <label for='add' class='la'>Edit address</label>
        <input type='text' id='add' value='<%=rst.getString(4)%>' name='address' class='form-control' required>
       </div>
       <div class='form-group col-md-5'>
        <label for='phone' class='la'>Edit phone number</label>
        <input type='text' id='phone' value='<%=rst.getString(5)%>' name='phone' class='form-control' required>
       </div>
       <div class='form-group col-md-10'>
        <label for='emid' class='la'>Edit email id</label>
        <input type='text' id='emid' value='<%=rst.getString(6)%>' name='email' class='form-control' required>
       </div>
       <div class='form-group col-md-10'>
         <button class='btr' style='background-color:rgb(100,200,150)'>Update Record</button>
       </div>
      </div>
     </form>
    </div>
  </div>
  </div>
 </body>
</html>