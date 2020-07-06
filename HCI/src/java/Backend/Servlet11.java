/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Backend;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aditya Dhole
 */
public class Servlet11 extends HttpServlet {

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
            RequestDispatcher rd;
                request.setAttribute("l_attend", 76);
                request.setAttribute("p_attend",133);
                request.setAttribute("t_attend",209);
                
                request.setAttribute("sub1","Information and Cyber Secutrity");
                request.setAttribute("sub2","Machine Learning");
                request.setAttribute("sub3","Soft Computing and Optimization Algorirthms");
                request.setAttribute("sub4","HCI");
                request.setAttribute("sub5","LP1");
                request.setAttribute("sub6","LP2");
                
                request.setAttribute("sub1L",15);
                request.setAttribute("sub2L",21);
                request.setAttribute("sub3L",24);
                request.setAttribute("sub4L",11);
                request.setAttribute("sub5L",5);
                request.setAttribute("sub6L",7);
                
                request.setAttribute("sub1T",43);
                request.setAttribute("sub2T",34);
                request.setAttribute("sub3T",45);
                request.setAttribute("sub4T",17);
                request.setAttribute("sub5T",8);
                request.setAttribute("sub6T",13);
                
                
                request.setAttribute("sub1P","35%");
                request.setAttribute("sub2P","70%");
                request.setAttribute("sub3P","26%");
                request.setAttribute("sub4P","29%");
                request.setAttribute("sub5P","64%");
                request.setAttribute("sub5P","55%");
                request.setAttribute("sub6P","69%");
                
                rd = request.getRequestDispatcher("html/dashboard.jsp");
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
        processRequest(request, response);
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
