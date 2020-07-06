/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aditya Dhole
 */
public class Servlet4 extends HttpServlet {

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
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String userid=(String)request.getSession().getAttribute("userid");
            
            Mysql_support msq=new Mysql_support();
            ArrayList<ArrayList<String>> alist=msq.retes();
            
            String day1=alist.get(0).get(0);
            String day2=alist.get(1).get(0);
            String day3=alist.get(2).get(0);
            String day4=alist.get(3).get(0);
            
            
            String day1_slot1=alist.get(0).get(1);
            String day2_slot1=alist.get(1).get(1);
            String day3_slot1=alist.get(2).get(1);
            String day4_slot1=alist.get(3).get(1);
           
            
            
            String day1_sub1=alist.get(0).get(2);
            String day2_sub1=alist.get(1).get(2);
            String day3_sub1=alist.get(2).get(2);
            String day4_sub1=alist.get(3).get(2);
           
            
            request.setAttribute("day1",day1);
            request.setAttribute("day2",day2);
            request.setAttribute("day3",day3);
            request.setAttribute("day4",day4);
            
            request.setAttribute("day1_slot1",day1_slot1);
            request.setAttribute("day2_slot1",day2_slot1);
            request.setAttribute("day3_slot1",day3_slot1);
            request.setAttribute("day4_slot1",day4_slot1);
            
            request.setAttribute("day1_sub1",day1_sub1);
            request.setAttribute("day2_sub1",day2_sub1);
            request.setAttribute("day3_sub1",day3_sub1);
            request.setAttribute("day4_sub1",day4_sub1);
            
             RequestDispatcher rd = request.getRequestDispatcher("html/exam.jsp");
                rd.include(request, response);
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Servlet4.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Servlet4.class.getName()).log(Level.SEVERE, null, ex);
        }
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
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Servlet4.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Servlet4.class.getName()).log(Level.SEVERE, null, ex);
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
