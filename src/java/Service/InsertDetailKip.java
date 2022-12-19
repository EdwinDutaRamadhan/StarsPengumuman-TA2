/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Service;

import DAO.UserDAO;
import Model.KipModel;
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
public class InsertDetailKip extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //Ambiil data dari FORM di JSP
        String nim = request.getParameter("nim");
        String nama = request.getParameter("nama");
        String progdi = request.getParameter("progdi");
        PrintWriter out = response.getWriter();
        //inittial model
        KipModel model = new KipModel();
        model.setNim(nim);
        model.setNama(nama);
        model.setProgdi(progdi);
        
        //insert model to DAO
        UserDAO DAO = new UserDAO();
        if(DAO.InsertDetailKip(model)){
            out.println("Berhasil menambahkan data");
            response.sendRedirect("/StarsPengumuman/Admin/DashboardKip.jsp");
        }else{
            out.println("Gagal menambahkan data");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);//Method GET
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);//Method POST
    }


}
