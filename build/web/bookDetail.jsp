<%-- 
    Document   : bookDetail
    Created on : Dec 14, 2023, 8:46:26 PM
    Author     : Macbook Pro
--%>

<%@page import="books.BookDTO"%>
<%@page import="books.bookDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Detail</title>
        <%@include file="css/allcss.jsp"%>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="css/navbar.jsp" %>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            bookDAO dao = new bookDAO();
            BookDTO b = dao.getBookByID(id);
        %>
    
        <div class="row">
            <div class="card m-3">
                <img alt="" src="images/<%= b.getImg()%>" style="width: 300px; height: 300px"
                     class="img-thublin">

            </div>
                     <div class="col-md-6">
            <div class="  m-3" style="width: 600px;height: 200px">
                <h3>Decription: </h3><p> <%= b.getDescription()%></p>
            </div>
            <div class="" style="width: 500px;padding-top: 40px">
                <h4>Category: </h4> <p><%= b.getCategory()%></p> 
                
            </div>
                     </div>
            <div class=" m-3">
                <h4>Author: </h4> <p><%= b.getAuthor()%></p> 
            </div>
            </div>
            
        </div>           

        <a type="button" class="btn btn-danger" href="<%= b.getLink_book()%>">Read Online</a>

        <div style="margin-top: 200px">
        <%@include file="css/footer.jsp" %>
</div>
    </body>
</html>
