<%@ include file="navbar.jsp" %>
<html>
 <body>
 <div class='container my-2'>
  <div class='card col-md-10 mx-auto'>
    <div class='card-body'>
     <form action='save-record.jsp'>
      <div class='row'>
       <div class='form-group col-md-10'>
        <label for='cid' class='la'>Enter customer id</label><span> *</span>
        <input type='text' id='cid' name='cid' class='form-control' required>
       </div>
       <div class='form-group col-md-5'>
        <label for='fname' class='la'>Enter first name</label><span> *</span>
        <input type='text' id='fname' name='firstname' class='form-control' required>
       </div>
       <div class='form-group col-md-5'>
        <label for='lname' class='la'>Enter last name</label><span> *</span>
        <input type='text' id='lname' name='lastname' class='form-control' required>
       </div>
       <div class='form-group col-md-5'>
        <label for='add' class='la'>Enter address</label><span> *</span>
        <input type='text' id='add' name='address' class='form-control' required>
       </div>
       <div class='form-group col-md-5'>
        <label for='phone' class='la'>Enter phone number</label><span> *</span>
        <input type='text' id='phone' name='phone' class='form-control' required>
       </div>
       <div class='form-group col-md-10'>
        <label for='emid' class='la'>Enter email id</label><span> *</span>
        <input type='text' id='emid' name='email' class='form-control' required>
       </div>
       <div class='form-group col-md-10'>
         <button class='btr'>Save Record</button>
       </div>
      </div>
     </form>
     <div>
      <span>*</span> Mandatory field 
     </div>
    </div>
  </div>
  </div>
 </body>
</html>