<%-- 
    Document   : addbook
    Created on : Dec 14, 2023, 9:22:17 AM
    Author     : Macbook Pro
--%>

<%@page import="books.BookDTO"%>
<%@page import="books.bookDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN : Edit Book</title>
       <%@include file="css/allcss.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="css/adminnavbar.jsp" %>
        <div class="container">
            <div class="row p-2">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            
                            <h3 class="text-center">Edit book</h3>
                                <%
                                   int id = Integer.parseInt(request.getParameter("id"));
                                    bookDAO dao = new bookDAO();
                                    BookDTO b =dao.getBookByID(id);
                                 %>
                            <form action="edit" method="POST" enctype="multipart/form-data">
                                <input type="text" name="idedit" value="<%= b.getId() %>" >
                                
                                <div class="form-group">
                                    <label for="input" >Book Title</label>
                                    <input name="title" type="text" class="form-control" id="input" value="<%= b.getTitle() %>">
                                </div>
                                <div class="form-group">
                                    <label for="input" >Book Author</label>
                                    <input name="author" type="text" class="form-control" id="input" value="<%= b.getAuthor() %>" >
                                </div>
                                <div class="form-group">
                                    <label for="input" >Book Category</label>
                                    <input name="category" type="text" class="form-control" id="input" value="<%= b.getCategory() %>">
                                </div>
                                <div class="form-group">
                                    <label for="input" >Number of Page</label>
                                    <input name="page" type="number" class="form-control" id="input" value="<%= b.getPage() %>">
                                </div>
                                <div class="form-group">
                                    <label for="input" >Description</label>
                                    <textarea name="description" type="text" class="form-control"  id="input"> <%= b.getDescription()%> "</textarea>
                                </div>
                                  <div class="form-group">
                                    <label for="input" >Link book</label>
                                    <input name="link" type="url" class="form-control" value="<%= b.getLink_book()%>"  id="input">
                                </div>
                                
                                
                                <button type="submit" class="btn btn-primary">EDIT</button>
                                
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
