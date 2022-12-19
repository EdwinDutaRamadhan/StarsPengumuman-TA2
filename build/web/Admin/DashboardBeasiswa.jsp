<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.BeasiswaModel"%>
<%@page import="Model.BeasiswaModel"%>
<%@include file="../Template/Header.html"%>
<%@ include file="../Template/NavWithIcon.html" %>
        <a class="text-decoration-none" href="/StarsPengumuman/Admin/Dashboard.jsp">Admin Pengumuman &nbsp;|</a> &nbsp;
        <a class="" href="/StarsPengumuman/Admin/DashboardBeasiswa.jsp">Admin Beasiswa &nbsp;| </a>&nbsp;
        <a class="text-decoration-none " href="/StarsPengumuman/Admin/DashboardKip.jsp">Admin Kip</a>
        <h2 class="text-center">Admin Dashboard Beasiswa</h2>
<%
    DAO.UserDAO userDao = new DAO.UserDAO();//Alias DAO sebagai Object
    List<BeasiswaModel> tableBeasiswa = new ArrayList<BeasiswaModel>();//pengumumanMahasiswa merupakan list dalam bentuk ArrayList yang berisi UserModel
    tableBeasiswa = userDao.getAllBeasiswa();//Perintah untuk menjalankan class getAllPengumumanMahasiswa pada DAO

%>

<div class="container">
    <a class="btn btn-success" href="InsertDetailBeasiswa.jsp">Insert Data</a>
    <table class="table table-hover">
        <tr>
            <th>Nama</th>
            <th>NIM</th>
            <th>Besaran</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>

        <% for (BeasiswaModel PM : tableBeasiswa) {%>
        <tr>
            <td><%= PM.getNama()%></td>
            <td><%= PM.getNim()%></td>
            <td><%= PM.getBesaran()%></td>
            <td><a class="btn btn-primary" href="/StarsPengumuman/Admin/UpdateDetailBeasiswa.jsp?id=<%= PM.getId() %>">Update</a></td>
            <td><a class="btn btn-danger" onclick="return confirm('Apakah anda yakin ingin menghapus');" href="/StarsPengumuman/DeleteDetailBeasiswa?id=<%= PM.getId() %>">Delete</a> </td>
            
        </tr>
        <% }%>

    </table>
</div>


<%@include file="../Template/Footer.html"%>
