<%-- 
    Document   : update
    Created on : Jun 12, 2022, 1:49:37 PM
    Author     : AS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="add" method="post" >
           
            
            Enter name product: <input name="name" required/>
            <br>
            Enter link to image of product: <input name="img" required />
              <br>
              Enter price of product: <input name="price" required/>
              <br>
              Enter describe of product: <br>
              <textarea class="form-control" rows="10"  name="describe" style="width: 20%;margin: 10px auto"></textarea> 
            <br><!-- comment -->
            select category:
            <select name="category"> 
                <option value="1" > laptop  </option>
                <option value="2"> Accessories </option>
                <option value="3" > smartPhone </option>
                <option value="4"> Cameras </option>
            </select>
            <br>
            <input type="submit" value="submit"/>
        </form>
    </body>
</html>
