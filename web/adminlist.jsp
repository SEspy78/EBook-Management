<%-- 
    Document   : adminlist
    Created on : Dec 14, 2023, 11:27:16 AM
    Author     : Macbook Pro
--%>

<%@page import="java.util.List"%>
<%@page import="books.BookDTO"%>
<%@page import="books.bookDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN: ALL BOOK</title>
        <%@include file="css/allcss.jsp" %>
    </head>
    <body>
        <%@include file="css/adminnavbar.jsp" %>

        <h3 class="text-center">Hello Admin</h3>
        
        
        
    <c:if test="${not empty succMsg}">
        <p class="text-center text-success"> ${succMsg}</p>
        <c:remove var="succMsg" scope="session" />
    </c:if>
    <c:if test="${not empty failedMsg}">
        <p class="text-center text-danger"> ${failedMsg}</p>
        <c:remove var="failedMsg" scope="session" />
    </c:if>                              



    <table class="table table-striped">
        <thead class="bg-primary text-white">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Title</th>
                <th scope="col">Author</th>
                <th scope="col">Category</th>
                <th scope="col">Number of Pages</th>
                <th scope="col">Image</th>
                <th scope="col">Description</th>
            </tr>
        </thead>
        <tbody>
            <%
                bookDAO dao = new bookDAO();
                List<BookDTO> list = dao.getAllBook();
                for (BookDTO b : list) {%>
            <tr>
                <td><%= b.getId()%> </td>
                <td> <%= b.getTitle()%></td>
                <td><%= b.getAuthor()%></td>
                <td><%= b.getCategory()%> </td>
                <td><%= b.getPage()%></td>
                <td><img src="images/<%= b.getImg()%>" style="width: 50px; height: 50px"></td>
                <td><%= b.getDescription()%></td>
                <td>
                    <a href="editbook.jsp?id=<%= b.getId()%> " class="btn btn-sm btn-primary">Edit</a> 
                    <a href="delete?id=<%= b.getId() %>" class="btn btn-sm btn-danger">Delete</a> 
                </td>
            </tr>
            <% }
            %>
        </tbody>
    </table>

    <div style="margin-top: 350px ">
        <%@include file="css/footer.jsp" %>
    </div>
</body>
</html>
