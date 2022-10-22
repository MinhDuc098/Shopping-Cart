/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import Entity.cart;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.OrderLine;

/**
 *
 * @author AS
 */
@WebServlet(name="addCart", urlPatterns={"/addCart"})
public class addCart extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<title>Servlet addCart</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addCart at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         HttpSession session = request.getSession();
         Account acc = (Account) session.getAttribute("user");
        if(acc==null){
            String mess = "User should login to Buy Books!";
            request.setAttribute("mess", mess);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        else{
        if(session.getAttribute("order") == null){
            List<OrderLine> order = new ArrayList<>();
            session.setAttribute("order",  order);
        }
            
            
        List<OrderLine> order = (List<OrderLine>)session.getAttribute("order");
        
        String id_raw = request.getParameter("id");
        String quantity_raw = request.getParameter("quantity");
        if(quantity_raw == null) quantity_raw = "1";
        try{
        int quantity = Integer.parseInt(quantity_raw);
        int id = Integer.parseInt(id_raw);
        cart c = new cart();
        order = c.addOrder(order,id,quantity);
        
        
        Double s=0.0;
        for(int i=0;i<order.size();i++){
            s+=order.get(i).getProduct().getPrice()*order.get(i).getQuantity();
        }
        
        session.setAttribute("order", order);
        session.setAttribute("sum", s);
        
        
        response.sendRedirect("detail?id="+id);
            
        }
        catch(Exception e){
            System.out.println(e);
        }
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
