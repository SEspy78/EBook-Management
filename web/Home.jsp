<%-- 
    Document   : Home.jsp
    Created on : Dec 13, 2023, 2:59:55 PM
    Author     : Macbook Pro
--%>

<%@page import="java.util.List"%>
<%@page import="books.BookDTO"%>
<%@page import="books.bookDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
         <%@include file="css/navbarlogin.jsp" %>
         <div class="container-fluid back-img">
             <h2 class="text-center text-white"> EBooks Management System </h2>
         </div>
         <div class="container">
             <h3>Recent Book</h3>
             <div class="row">
<!--                 <div class="col-md-3">
                     <div class="card">
                      <div class="card-body text-center">
                          <img alt="" src="images/nhung-cuon-sach-hay-6.jpg" style="width: 150px; height: 200px"
                               class="img-thublin">
                         <p>Doi ngan dung ngu dai </p>
                         <p>Khong biet </p>
                         <div class="row">
                             <a href="" class="btn btn-danger btn-sm "> View </a>
                         </div>
                     </div>
                     </div>
                 </div>
                 <div class="col-md-3">
                     <div class="card">
                      <div class="card-body text-center">
                          <img alt="" src="images/nhung-cuon-sach-hay-6.jpg" style="width: 150px; height: 200px"
                               class="img-thublin">
                         <p>Doi ngan dung ngu dai </p>
                         <p>Khong biet </p>
                         <div class="row">
                             <a href="" class="btn btn-danger btn-sm "> View </a>
                         </div>
                     </div>
                     </div>
                 </div>
                 <div class="col-md-3">
                     <div class="card">
                      <div class="card-body text-center">
                          <img alt="" src="images/nhung-cuon-sach-hay-6.jpg" style="width: 150px; height: 200px"
                               class="img-thublin">
                         <p>Doi ngan dung ngu dai </p>
                         <p>Khong biet </p>
                         <div class="row">
                             <a href="" class="btn btn-danger btn-sm "> View </a>
                         </div>
                     </div>
                     </div>
                 </div>
                  <div class="col-md-3">
                     <div class="card">
                      <div class="card-body text-center">
                          <img alt="" src="images/nhung-cuon-sach-hay-6.jpg" style="width: 150px; height: 200px"
                               class="img-thublin">
                         <p>Doi ngan dung ngu dai </p>
                         <p>Khong biet </p>
                         <div class="row">
                             <a href="" class="btn btn-danger btn-sm "> View </a>
                         </div>
                     </div>
                     </div>
                 </div>
                  <div class="col-md-3 mt-3">
                     <div class="card">
                      <div class="card-body text-center">
                          <img alt="" src="images/nhung-cuon-sach-hay-6.jpg" style="width: 150px; height: 200px"
                               class="img-thublin">
                         <p>Doi ngan dung ngu dai </p>
                         <p>Khong biet </p>
                         <div class="row">
                             <a href="" class="btn btn-danger btn-sm "> View </a>
                         </div>
                     </div>
                     </div>
                 </div>
                  <div class="col-md-3 mt-3">
                     <div class="card">
                      <div class="card-body text-center">
                          <img alt="" src="images/nhung-cuon-sach-hay-6.jpg" style="width: 150px; height: 200px"
                               class="img-thublin">
                         <p>Doi ngan dung ngu dai </p>
                         <p>Khong biet </p>
                         <div class="row">
                             <a href="" class="btn btn-danger btn-sm "> View </a>
                         </div>
                     </div>
                     </div>
                 </div>
                 <div class="col-md-3 mt-3">
                     <div class="card">
                      <div class="card-body text-center">
                          <img alt="" src="images/nhung-cuon-sach-hay-6.jpg" style="width: 150px; height: 200px"
                               class="img-thublin">
                         <p>Doi ngan dung ngu dai </p>
                         <p>Khong biet </p>
                         <div class="row">
                             <a href="" class="btn btn-danger btn-sm "> View </a>
                         </div>
                     </div>
                     </div>
                 </div>
                 <div class="col-md-3 mt-3">
                     <div class="card">
                      <div class="card-body text-center">
                          <img alt="" src="images/nhung-cuon-sach-hay-6.jpg" style="width: 150px; height: 200px"
                               class="img-thublin">
                         <p>Doi ngan dung ngu dai </p>
                         <p>Khong biet </p>
                         <div class="row">
                             <a href="" class="btn btn-danger btn-sm "> View </a>
                         </div>
                     </div>
                     </div>
                 </div>
             </div>
         </div>-->
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
                     </div>
                     </div>
                 </div>
                
                
                <%
                    }
                %>
         
             </div>
         </div>
         
         
         <%@include file="css/footer.jsp" %>
    </body>
</html>
