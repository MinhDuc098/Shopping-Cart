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
        <h1 class="jumbotron-heading">MANAGER PRODUCT</h1>
     </div>
</section>


    
    


<div class="container mb-4">
    
    <table class="text-left" style="padding: 20px; margin-bottom: 40px; font-size: 16px; text-transform: capitalize" >
        <tr> <th  > number of laptop: </th> <th>   ${ll} </th>  </tr>
            <tr> <th style="padding-right:  5px"> number of smart phone:  </th> <th>  ${ls} </th> </tr>
            <tr> <th>number of Accessories:  </th> <th>    ${la} </th> </tr>
            <tr style="margin-bottom: 30px" > <th> number of cameras: </th> <th>  ${lc} </th>  </tr>
            <tr> <th> total amount of product: </th> <th>  ${lc+la+ls+ll} </th>  </tr>
        </table>
    
    <div class="text-right">
        <a href="add.jsp">    <button class="btn btn-lg btn-success ">ADD NEW PRODUCT  </button></a>
</div>
    
    <div class="row">
        <div class="col-12">
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col"> id </th>
                            <th scope="col">image</th>
                            <th scope="col">Name</th>
                            <th scope="col">Available</th>
                            <th scope="col" class="text-right">Price</th>
                            <th> </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <c:forEach items="${requestScope.product}" var="d">
                            <td> ${d.id} </td>
                            <td><img src="${d.image}" style="width: 100%;height: 230px" /> </td>
                            <td>${d.name}</td>
                            <td>In stock</td>
                          
                            <td class="text-right">${d.price}$</td>
                            <td class="text-right"> <a href="delete?id=${d.id}"> <button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i>  Delete </button></a> </td>
                            <td class="text-right"> <a href="update?id=${d.id}"> <button class="btn btn-sm btn-danger"><i class="fa fa-pencil"></i> update  </button></a> </td>
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


