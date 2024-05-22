<%-- 
    Document   : adminhome
    Created on : Dec 13, 2023, 11:28:01 PM
    Author     : Macbook Pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home : Admin</title>
        <%@include file="css/allcss.jsp" %>
        <style type="text/css">
            a{
                text-decoration: none ;
                color: black;
            }
            a:hover{
                text-decoration: none;
                color: black;
            }

        </style>

    </head>
    <body>
        <%@include file="css/adminnavbar.jsp" %>
        <div class="container">
            <div class="row p-5">

                <div class="col-md-3 ">
                    <a href="addbook.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <h4>ADD BOOK</h4>
                                =============
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3 ml-5">
                    <a href="adminlist.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <h4>ALL BOOKs</h4>
                                =============
                            </div>
                        </div>
                    </a>
                </div>
               
                <div class="col-md-3 ml-5">
                    <a data-toggle="modal" data-target="#exampleModalCenter">
                    <div class="card">
                        <div class="card-body text-center">

                            <h4>LOG OUT</h4>
                            =============
                        </div>
                    </div>
                    </a>  
                </div>
            </div>
        </div>
    </body>
</html>
