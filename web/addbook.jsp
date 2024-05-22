<%-- 
    Document   : addbook
    Created on : Dec 14, 2023, 9:22:17 AM
    Author     : Macbook Pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN : Add Book</title>
       <%@include file="css/allcss.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="css/adminnavbar.jsp" %>
        <div class="container">
            <div class="row p-2">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            
                            <h3 class="text-center">Add Book</h3>
                            
                            <c:if test="${not empty succMsg}">
                                <p class="text-center text-success"> ${succMsg}</p>
                                <c:remove var="succMsg" scope="session" />
                            </c:if>
                                <c:if test="${not empty failedMsg}">
                                <p class="text-center text-danger"> ${failedMsg}</p>
                                <c:remove var="failedMsg" scope="session" />
                            </c:if>
                            
                            <form action="addbook" method="POST" enctype="multipart/form-data">
                                
                                
                                <div class="form-group">
                                    <label for="input" >Book Title</label>
                                    <input name="title" type="text" class="form-control" id="input" required="require">
                                </div>
                                <div class="form-group">
                                    <label for="input" >Book Author</label>
                                    <input name="author" type="text" class="form-control" id="input" required="require">
                                </div>
                                <div class="form-group">
                                    <label for="input" >Book Category</label>
                                    <input name="category" type="text" class="form-control" id="input" required="require">
                                </div>
                                <div class="form-group">
                                    <label for="input" >Number of Page</label>
                                    <input name="page" type="number" class="form-control" id="input">
                                </div>
                                <div class="form-group">
                                    <label for="input" >Upload photo</label>
                                    <input name="bimg" type="file" class="form-control-file" id="input">
                                </div>
                                <div class="form-group">
                                    <label for="input" >Description</label>
                                    <textarea name="description" type="text" class="form-control" id="input"></textarea>
                                </div>
                                  <div class="form-group">
                                    <label for="input" >Link book</label>
                                    <input name="link" type="url" class="form-control" id="input">
                                </div>
                                <div class="form-group">
                                    <label for="input" >Poster</label>
                                    <select name="post" class="form-control" id="input" required="require">
                                        <option selected>---select---</option>
                                        <option value="2" >Jane Smith</option>
                                        <option value="3">Karl Peter</option>
                                        
                                    </select>
                                </div>
                                
                                <button type="submit" class="btn btn-primary">Add</button>
                                
                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
        <div style="margin-top: 40px ">
        <%@include file="css/footer.jsp" %>
        </div>
    </body>
</html>
