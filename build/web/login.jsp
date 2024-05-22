<%-- 
    Document   : login
    Created on : Dec 13, 2023, 8:54:05 PM
    Author     : Macbook Pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
         <%@include file="css/allcss.jsp" %>
    </head>
   <body style="background-color: #f0f1f2">
        <%@include file="css/navbarlogin.jsp" %>
        <div class="container p-2">
            <div class="row">  
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center">LOGIN </h4>
                            
                             <c:if test="${not empty failMsg}">
                                <h5 class="text-center text-danger"> ${failMsg}</h5>
                                <c:remove var="failMsg" scope="session"/>
                             </c:if>
                                <c:if test="${not empty succMsg}">
                                <h5 class="text-center text-success"> ${succMsg}</h5>
                                <c:remove var="succMsg" scope="session"/>
                             </c:if>
                               
                            <form action="login" method="POST">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">User Name</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="username">
                                    
                                </div>
                               
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password" >
                                </div>
                                
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Login</button><br>
                                    <a href="register.jsp">Create Account</a>
                                </div>
                          
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div style="margin-top: 280px">
            <%@include file="css/footer.jsp" %>
        </div>
        
    </body>
</html>
