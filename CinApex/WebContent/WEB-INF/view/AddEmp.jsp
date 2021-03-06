<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Cinapex</title>
 </head>
 <body>
<jsp:include page="menu.jsp"></jsp:include>


<div class="container">
  <h2>Add an Employee</h2>
  <p>Fill out all fields below to add an Employee to the database:</p>
  <form action="/Cinapex1/EmpAdded">
    <div class="form-group row">
     <div class="col-xs-4">
        <label for="ex3">First Name</label>
        <input class="form-control" id="ex3" type="text" name="EmpFname" placeholder="First Name" required autofocus>
      </div>
            <div class="col-xs-4">
        <label for="ex3">Last Name</label>
        <input class="form-control" id="ex3" type="text" name="EmpLName" placeholder="Last Name" required autofocus>
      </div>
      <div class="col-xs-4">
        <label for="ex3">Id</label>
        <input class="form-control" id="ex3" type="text" name="EmpId" placeholder="x" required autofocus>
      </div>
      <div class="col-xs-4">
        <label for="ex3">SSN</label>
        <input class="form-control" id="ex3" type="text" name="EmpSSN" placeholder="xxx-xx-xxxx" required autofocus>
      </div>
      <br><br><br>
      <div class="col-xs-4">
        <label for="ex3">Address</label>
        <input class="form-control" id="ex3" type="text" name="EmpAddress" placeholder="Ex: 123 Success Street" required autofocus>
      </div>
       <div class="col-xs-4">
        <label for="ex3">City</label>
        <input class="form-control" id="ex3" type="text" name="EmpCity" placeholder="Ex: StonyBrook" required autofocus>
      </div>
      <div class="col-xs-4">
        <label for="ex3">ZipCode</label>
        <input class="form-control" id="ex3" type="number" name="EmpZip" placeholder="Ex: 11790" maxlength="5" required autofocus>
      </div>
      
      <div class="col-xs-4">
        <label for="ex3">State</label>
        <input class="form-control" id="ex3" type="text" name="EmpState" placeholder="Ex: NY" maxlength="2" required autofocus>
      </div>
      <br><br><br>
      <div class="col-xs-4">
        <label for="ex3">Phone</label>
        <input class="form-control" id="ex3" type="text" name="EmpPhone" placeholder="Ex: 516-632-8959" maxlength="12" required autofocus>
      </div>
      
    
     <div class="col-xs-4">
        <label for="ex3">Start Date</label>
        <input class="form-control" id="ex3" type="text" name="EmpDate" placeholder="Ex: 11-1-05" required autofocus>
      </div>
      
      <div class="col-xs-4">
        <label for="ex3">Hourly Wage</label>
        <input class="form-control" id="ex3" type="number" name="EmpWage" placeholder="Ex: $60" required autofocus>
      </div>
      </div>
      <br><br>
             <button class="btn btn-lg btn-primary btn-block" type="submit">Add</button>
  </form>
</div>



 </body>
</html>