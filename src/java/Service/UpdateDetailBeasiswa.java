/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Service;

import DAO.UserDAO;
import Model.BeasiswaModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
public class UpdateDetailBeasiswa extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //Ambiil data dari FORM di JSP
        String id = request.getParameter("id");
        String nama = request.getParameter("nama");
        String nim = request.getParameter("nim");
        String besaran = request.getParameter("besaran");
       
        UserDAO DAO = new UserDAO();
        BeasiswaModel model = new BeasiswaModel();
        model.setId(id);
        model.setNama(nama);
        model.setNim(nim);
        model.setBesaran(besaran);

        if (DAO.UpdateDetailBeasiswaManual(id,nama,nim,besaran)) {
            response.sendRedirect("/StarsPengumuman/Admin/DashboardBeasiswa.jsp");
        } else {
            System.out.println("gagal mengupdate data");
        }
    }

    // <editor-fold defaultstate="collapsed" desk="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
