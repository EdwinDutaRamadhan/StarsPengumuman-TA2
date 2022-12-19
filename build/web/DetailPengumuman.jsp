<%@page import="Model.KipModel"%>
<%@page import="Model.BeasiswaModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.UserDAO"%>
<%@page import="java.util.List"%>
<%@page import="Model.UserModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Template/Header.html"%>
<%@ include file="Template/NavWithIcon.html" %>
<%
    String id = request.getParameter("id");
    String category = request.getParameter("category");
    DAO.UserDAO userDao = new DAO.UserDAO();//Alias DAO sebagai Object
    List<UserModel> pengumumanMahasiswa = new ArrayList<UserModel>();//pengumumanMahasiswa merupakan list dalam bentuk ArrayList yang berisi UserModel
    pengumumanMahasiswa = userDao.getSinglePengumumanMahasiswa(id);//Perintah untuk menjalankan class getAllPengumumanMahasiswa pada DAO
    List<BeasiswaModel> tableBeasiswa = new ArrayList<BeasiswaModel>();
    tableBeasiswa = userDao.getAllBeasiswa();
    List<KipModel> tableKip = new ArrayList<KipModel>();
    tableKip = userDao.getAllKip();
%>
<div class="container-fluid" style="background: url('https://mlc-wels.edu/events/wp-content/uploads/sites/50/2015/12/Auditorium-2-1500x1001.jpg');background-position: center; height: 400px;">
    <div class="container">
        <h1 class="text-primary text-left pt-5">Pengumuman <%= category%></h1>
    </div>
</div>
<div class="container">
    <% for (UserModel PM : pengumumanMahasiswa) { // perulangan semua data yg ada di List<UserModel>%>
    <div class="row mt-5">
        <div class="container">
            <img class="img-fluid w-100" src="<%= PM.getImage()%>" alt="alt"/>
        </div>
    </div>
    <div class="row justify-content-start">
        <div class="col-md-4 mt-3 mb-3">
            <h1 class="text-dark"><b><%= PM.getCategory()%></b></h1>
        </div>
    </div>
    <div class="row mb-3">
        <p class="text-muted">
            <%= PM.getDesk()%>
        </p>
    </div>
    <div class="row">
        <div class="col-md-12">
            <% if (category.equals("Beasiswa")) { %>
            <h4>Daftar Mahasiswa Penerima <%= PM.getType() %></h4>
            <table class="table table-hover" border="1">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>NIM</th>
                        <th>Besaran</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (BeasiswaModel BM : tableBeasiswa) { %>
                    <tr>
                        <td><%= BM.getId() %></td>
                        <td><%= BM.getNama()%></td>
                        <td><%= BM.getNim()%></td>
                        <td><%= BM.getBesaran()%></td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
            <% } else if (category.equals("KIP")) { %>
            <h4>Daftar Mahasiswa Penerima <%= PM.getType() %></h4>
            <table class="table table-hover" border="1">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>No Induk</th>
                        <th>Nama Mahasiswa</th>
                        <th>Program Studi</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (KipModel KM : tableKip) { %>
                    <tr>
                        <td><%= KM.getId() %></td>
                        <td><%= KM.getNama()%></td>
                        <td><%= KM.getNim()%></td>
                        <td><%= KM.getProgdi()%></td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
            <% } else {
                }%>
        </div>
    </div>    
<% }%>
</div>

<%@include file="Template/Footer.html"%>