<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.KipModel"%>
<%@page import="Model.KipModel"%>
<%@include file="../Template/Header.html"%>
<%@ include file="../Template/NavWithIcon.html" %>
    <a class="text-decoration-none" href="/StarsPengumuman/Admin/Dashboard.jsp">Admin Pengumuman &nbsp;|</a> &nbsp;
        <a class="text-decoration-none " href="/StarsPengumuman/Admin/DashboardBeasiswa.jsp">Admin Beasiswa &nbsp;| </a>&nbsp;
        <a class=" " href="/StarsPengumuman/Admin/DashboardKip.jsp">Admin Kip</a>
        <h2 class="text-center">Admin Dashboard KIP</h2>
<%
    DAO.UserDAO userDao = new DAO.UserDAO();//Alias DAO sebagai Object
    List<KipModel> tableKip = new ArrayList<KipModel>();//pengumumanMahasiswa merupakan list dalam bentuk ArrayList yang berisi UserModel
    tableKip = userDao.getAllKip();//Perintah untuk menjalankan class getAllPengumumanMahasiswa pada DAO

%>

<div class="container">
    <a class="btn btn-success" href="InsertDetailKip.jsp">Insert Data</a>
    <table class="table table-hover">
        <tr>
            <th>NIM</th>
            <th>Nama</th>
            <th>Progdi</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>

        <% for (KipModel PM : tableKip) {%>
        <tr>
            <td><%= PM.getNim()%></td>
            <td><%= PM.getNama()%></td>
            <td><%= PM.getProgdi()%></td>
            <td><a class="btn btn-primary" href="/StarsPengumuman/Admin/UpdateDetailKip.jsp?id=<%= PM.getId() %>">Update</a></td>
            <td><a class="btn btn-danger" onclick="return confirm('Apakah anda yakin ingin menghapus');" href="/StarsPengumuman/DeleteDetailKip?id=<%= PM.getId() %>">Delete</a> </td>
            
        </tr>
        <% }%>

    </table>
</div>


<%@include file="../Template/Footer.html"%>
