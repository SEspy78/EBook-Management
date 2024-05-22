/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import books.BookDTO;
import books.bookDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Macbook Pro
 */
public class editbookController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet editbookController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet editbookController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      try {
          log(request.getParameter("idedit"));
          log("param"+ request.getParameter("idedit"));
          int id = Integer.parseInt(request.getParameter("idedit"));
           String title = request.getParameter("title");
           String author = request.getParameter("author");
           String category = request.getParameter("category");
           int page = Integer.parseInt(request.getParameter("page"));
           String desc = request.getParameter("description");
            String link = request.getParameter("link");
             
            log("aloloolo");
            BookDTO b = new BookDTO();
            b.setId(id);
            b.setTitle(title);
            b.setAuthor(author);
            b.setCategory(category);
            b.setPage(page);
            b.setDescription(desc);
            b.setLink_book(link);
            
            bookDAO dao = new bookDAO();
            boolean f = dao.UpdateEditBook(b);
            HttpSession session = request.getSession();
            if(f){
                
                session.setAttribute("succMsg", "Book update succesfully");
                response.sendRedirect("adminlist.jsp");
            }else {
                session.setAttribute("failedMsg", "Some thing went wrong on the server !");
                response.sendRedirect("adminlist.jsp");
            }
            
            
    }catch (Exception e){
        e.printStackTrace();
    }
      
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
