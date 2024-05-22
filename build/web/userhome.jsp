<%-- 
    Document   : userhome
    Created on : Dec 13, 2023, 11:27:14 PM
    Author     : Macbook Pro
--%>

<%@page import="java.util.List"%>
<%@page import="books.BookDTO"%>
<%@page import="books.bookDAO"%>
<%@page import="books.bookDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home: User</title>
        <%@include file="css/allcss.jsp"%>
        <style type="text/css">
            .back-img{
                background: url("images/b3.png");
                height: 50vh;
                width: 100%;
                background-size: cover;
            }
        </style>
    </head>
    <body style="background-color: #f0f1f2">
         <%@include file="css/navbar.jsp" %>
          <div class="container-fluid back-img">
              <h1> USER HOME </h1>
    <c:if test="${not empty object}">
        <h1>Welcome :${object.name}</h1>
    </c:if>  
         </div>
        <div class="row">
            <%
                bookDAO dao = new bookDAO();
                List<BookDTO> list = dao.getAllBook();
                for (BookDTO b : list) {%>
                <div class="col-md-3 p-2">
                     <div class="card">
                      <div class="card-body text-center">
                          <img alt="" src="images/<%= b.getImg()%>" style="width: 150px; height: 200px"
                               class="img-thublin">
                         <p><%= b.getTitle()%> </p>
                         <div class="text-center">
                             <a href="bookDetail.jsp?id=<%= b.getId()%>" class="btn btn-danger btn-sm "> View Detail</a>
                         </div>
                     </div>
                     </div>
                 </div>
                
                
                <%
                    }
                %>
         
             </div>>
         
         
         
         <%@include file="css/footer.jsp" %>
   
</body>
</html>
