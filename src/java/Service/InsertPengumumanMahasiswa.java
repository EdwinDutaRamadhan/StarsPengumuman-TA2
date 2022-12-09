/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Service;

import DAO.UserDAO;
import Model.UserModel;
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
public class InsertPengumumanMahasiswa extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //Ambiil data dari FORM di JSP
        String title = request.getParameter("title");
        String category = request.getParameter("category");
        String type = request.getParameter("type");
        String desc = request.getParameter("desc");
        String image = request.getParameter("image");
        PrintWriter out = response.getWriter();
        //inittial model
        UserModel model = new UserModel();
        model.setTitle(title);
        model.setCategory(category);
        model.setType(type);
        model.setDesc(desc);
        model.setImage(image);
        
        //insert model to DAO
        UserDAO DAO = new UserDAO();
        if(DAO.InsertPengumumanMahasiswa(model)){
            out.println("Berhasil menambahkan data");
            response.sendRedirect("/StarsPengumuman/PengumumanMahasiswa.jsp");
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
