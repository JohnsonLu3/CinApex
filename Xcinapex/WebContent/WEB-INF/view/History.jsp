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
 <jsp:include page="_menu.jsp"></jsp:include>
 
    <h3 align = "center">Your History</h3>
 <p style="color: red;">${errorString}</p>
    <table border="1" cellpadding="5" cellspacing="1" align = "center">
      
       <h3>Account Type :${loggedInUser.ssn }</h3>
    </table>
 
    
 </body>
</html>