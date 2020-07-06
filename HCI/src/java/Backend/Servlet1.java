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
public class Servlet1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public int isStudent(String user_id)
    {
        if(user_id.charAt(0)=='S')
            return 1;
        
        return 0;
    
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            String user_id = request.getParameter("userid");
            String password = request.getParameter("password");
            request.getSession().setAttribute("userid", user_id); //this user id will now be available to all servlets. pass this to DB.java as primary key for accessing tables.
            
            int is_Student= isStudent(user_id);
            if(is_Student==1)
            {
                //Redirect to student view
                String sub1="Information and Cyber Security";
                String sub2="Machine Learning";
                String sub3="Soft Computing and Optimization Algorithms";
                String sub4="HCI";
                String sub5="LP1";
                String sub6="LP2";
                
                int sub1L=15;
                int sub2L=21;
                int sub3L=24;
                int sub4L=11;
                int sub5L=5;
                int sub6L=7;
                
                
                int sub1T=43;
                int sub2T=34;
                int sub3T=45;
                int sub4T=17;
                int sub5T=8;
                int sub6T=13;
                
                 String sub1P= "35%"; 
                 String sub2P="70%";
                 String sub3P="26%";
                 String sub4P="29%";
                 String sub5P="55%";
                 String sub6P="69%";
                      
                
                
                RequestDispatcher rd;
                request.setAttribute("l_attend", 76);
                request.setAttribute("p_attend",133);
                request.setAttribute("t_attend",209);
                
                request.setAttribute("sub1", sub1);
                request.setAttribute("sub2", sub2);
                request.setAttribute("sub3", sub3);
                request.setAttribute("sub4", sub4);
                request.setAttribute("sub5", sub5);
                request.setAttribute("sub6", sub6);
                
                
                request.setAttribute("sub1L",sub1L);
                request.setAttribute("sub2L",sub2L);
                request.setAttribute("sub3L",sub3L);
                request.setAttribute("sub4L",sub4L);
                request.setAttribute("sub5L",sub5L);
                request.setAttribute("sub6L",sub6L);
            
                
                request.setAttribute("sub1T",sub1T);
                request.setAttribute("sub2T",sub2T);
                request.setAttribute("sub3T",sub3T);
                request.setAttribute("sub4T",sub4T);
                request.setAttribute("sub5T",sub5T);
                request.setAttribute("sub6T",sub6T);
                
                
                
                request.setAttribute("sub1P",sub1P);
                request.setAttribute("sub2P",sub2P);
                request.setAttribute("sub3P",sub3P);
                request.setAttribute("sub4P",sub4P);
                request.setAttribute("sub5P",sub5P);
                request.setAttribute("sub6P",sub6P);
                
              
                
                rd = request.getRequestDispatcher("html/dashboard.jsp");
                rd.include(request, response);
                        

            }
            else
            {
                //Redirect to professor view
                //Professor view not developed yet - showing appropriate msg
               RequestDispatcher rd = request.getRequestDispatcher("html/pdashboard.jsp");
               rd.include(request, response);
                
            }
            
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
