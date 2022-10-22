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
        <form action="update" method="post" >
            <c:set var="p" value="${requestScope.p}"/>
            ID product:
            <input value="${p.id}" readonly name="id" />
            <br>
            Enter name product: <input name="name" value="${p.name}" />
            <br>
            Enter link to image of product: <input name="img" type="url" value="${p.image}" />
              <br>
              Enter price of product: <input name="price" value="${p.price}" />
              <br>
              Enter describe of product: 
              <br>
              <textarea class="form-control" rows="10"  name="describe" style="width: 20%;margin: 10px auto">${p.describe}</textarea> 

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
