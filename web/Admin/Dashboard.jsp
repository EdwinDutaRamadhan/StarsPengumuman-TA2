<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.UserModel"%>
<%@page import="Model.UserModel"%>
<%@include file="../Template/Header.html"%>
<%@ include file="../Template/NavWithIcon.html" %>
<div class="container-fluid">
    <a class="" href="/StarsPengumuman/Admin/Dashboard.jsp">Admin Pengumuman &nbsp;|</a> &nbsp;
        <a class="text-decoration-none " href="/StarsPengumuman/Admin/DashboardBeasiswa.jsp">Admin Beasiswa &nbsp;| </a>&nbsp;
        <a class="text-decoration-none " href="/StarsPengumuman/Admin/DashboardKip.jsp">Admin Kip</a>
        <h2 class="text-center">Admin Dashboard Pengumuman Mahasiswa</h2>
<%
    DAO.UserDAO userDao = new DAO.UserDAO();//Alias DAO sebagai Object
    List<UserModel> pengumumanMahasiswa = new ArrayList<UserModel>();//pengumumanMahasiswa merupakan list dalam bentuk ArrayList yang berisi UserModel
    pengumumanMahasiswa = userDao.getAllPengumumanMahasiswa();//Perintah untuk menjalankan class getAllPengumumanMahasiswa pada DAO

%>


    <a class="btn btn-primary" href="InsertPengumumanMahasiswa.jsp">Insert Data</a>
    <table class="table table-hover" >
        <tr>
            <th>Title</th>
            <th>Category</th>
            <th>Type</th>
            <th>Desc</th>
            <th>Image</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>

        <% for (UserModel PM : pengumumanMahasiswa) {%>
        <tr>
            <td><%= PM.getTitle()%></td>
            <td><%= PM.getCategory()%></td>
            <td><%= PM.getType()%></td>
            <td><%= PM.getDesk().substring(0,10) %>...</td>
            <td><%= PM.getImage().substring(0,10)%></td>
            <td><a onclick="return confirm('Apakah anda yakin ingin menghapus');" href="/StarsPengumuman/DeletePengumumanMahasiswa?id=<%= PM.getId() %>">Delete</a> </td>
            <td><a href="/StarsPengumuman/Admin/UpdatePengumumanMahasiswa.jsp?id=<%= PM.getId() %>">Update</a></td>
        </tr>
        <% }%>

    </table>
</div>


<%@include file="../Template/Footer.html"%>
