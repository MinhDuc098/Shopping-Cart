<%-- 
    Document   : viewbill
    Created on : Jun 18, 2022, 1:17:32 PM
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
        
       
        <h1 style="text-align: center; margin-top: 20px" > INFORMATION OF USER </h1>
        
       
        <table class="container" style="padding: 20px; margin-bottom: 40px; font-size: 16px" >
            <tr> <th> Full name:  </th> <th> ${listbill.lastName} ${listbill.firstName} </th>  </tr>
            <tr> <th> Address:    </th> <th> ${listbill.address} </th> </tr>
            <tr> <th> City:       </th> <th> ${listbill.city} </th> </tr>
            <tr> <th> Country:    </th>  <th> ${listbill.country} </th>  </tr>
            <tr> <th> ZipCode:    </th> <th> ${listbill.zipCode} </th>  </tr>
            <tr> <th> Telephone:  </th> <th> ${listbill.telephone} </th> </tr>
        </table>
        
            
            <table border="1px" class="container" style="text-align: center">
            <tr>
                <th style="text-align: center" >QUANTITY</th>
                <th style="text-align: center" >PRODUCT NAME</th>
                <th style="text-align: center" >IMAGE</th>
                
            </tr>
            <c:forEach items="${requestScope.listoder}" var="lo">
                <tr>
                    <th style="text-align: center" > ${lo.quantity} </th>
                    <th style="text-align: center" > ${lo.product.name} </th>
                    <th > <img src="${lo.product.image}" alt="alt" style="width: 200px;height: 200px" /> </th>
                </tr>
            </c:forEach>
                
                </table>
            
            <div class="col mb-2 container " style="margin-top: 20px" >
            <div class="row">
                <div class="col-sm-12  col-md-12">
                    <a href="loadProducts">    <button class="btn btn-lg btn-block btn-success text-uppercase"> back to home</button></a>
                </div>
                
            </div>
                
            </div>
                
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
