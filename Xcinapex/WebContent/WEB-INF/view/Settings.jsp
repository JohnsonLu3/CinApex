<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Settings</title>
 </head>
 <body>
 <jsp:include page="menu.jsp"></jsp:include>
 
    <h3 align = "center">Your Settings</h3>
 <p style="color: red;">${errorString}</p>
    <table border="1" cellpadding="5" cellspacing="1" align = "center" class="table table-striped">
       <h3>Account Type :${sessionScope.personType }</h3>
       
       <td><input type="text" value="<%= session.getAttribute("personType") %>" /></td>
    </table>
 <c:out value="${sessionScope.loggedInUser.firstName } + ${sessionScope.loggedInUser.lastName}"/>
  <c:out value="${sessionScope.loggedInUser.address } + ${sessionScope.loggedInUser.zipcode}"/>
    
 </body>
</html>