<%-- 
    Document   : findAccount
    Created on : Jun 18, 2022, 5:24:08 PM
    Author     : AS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h2>Change password</h2>
        
        <h4> ${requestScope.err} </h4>
        <form action="updateAccount">
            Enter your user name: <input type="text" name="user"/><!-- comment -->
            <br>
            Enter your old password: <input type="text" name="Opass"/><!-- comment -->
            <br>
            Enter your new password: <input type="text" name="Npass"/><!-- comment -->
            <br><!-- comment -->
            <input type="submit" value="submit"/>
            
        </form>
        
        
       
    </body>
</html>
