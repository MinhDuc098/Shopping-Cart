<%-- 
    Document   : manager
    Created on : Jun 9, 2022, 2:37:58 PM
    Author     : AS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">



<section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">MANAGER ACCOUNT</h1>
     </div>
</section>

<div class="container mb-4">
    
   
    
    <div class="row">
        <div class="col-12">
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col"> id </th>
                            <th scope="col">user name</th>
                            <th scope="col">password</th>
                            <th scope="col">isAdmin</th>
                            <th scope="col" class="text-right">isUser</th>
                            <th> </th>
                        </tr>
                    </thead>
                    <tbody>
                            <c:forEach items="${requestScope.acc}" var="d">
                        <tr>
                            <td> ${d.id} </td>
                            <td>${d.userName} </td>
                            <td> ${d.password} </td>
                            <td> ${d.isAdmin==1?"false":"true"} </td>
                          
                            <td class="text-right"> ${d.isUser==1?"false":"true"} </td>
                            <td class="text-right"> <a href="deleteAccount?id=${d.id}"> <button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i>  Delete </button></a> </td>
                            <td class="text-right"> <a href="loadBill?id=${d.id}"> <button class="btn btn-sm btn-danger"><i class="fa fa-pencil"></i>  Show Information </button></a> </td>
                           
                        </tr>
                        
                       
                            </c:forEach>
                        
                        
                        
                                               
                       
                        
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col mb-2">
            <div class="row">
                <div class="col-sm-12  col-md-12">
                    <a href="loadProducts">    <button class="btn btn-lg btn-block btn-success text-uppercase"> back to home</button></a>
                </div>
                
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>


