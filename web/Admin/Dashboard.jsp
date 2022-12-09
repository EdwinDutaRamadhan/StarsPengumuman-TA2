<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.UserModel"%>
<%@page import="Model.UserModel"%>
<%@include file="../Template/Header.html"%>
<%@ include file="../Template/NavWithIcon.html" %>
<h1>Admin Dashboard</h1>
<%
    DAO.UserDAO userDao = new DAO.UserDAO();//Alias DAO sebagai Object
    List<UserModel> pengumumanMahasiswa = new ArrayList<UserModel>();//pengumumanMahasiswa merupakan list dalam bentuk ArrayList yang berisi UserModel
    pengumumanMahasiswa = userDao.getAllPengumumanMahasiswa();//Perintah untuk menjalankan class getAllPengumumanMahasiswa pada DAO
%>

<div class="container">
    <a class="btn btn-primary" href="InsertPengumumanMahasiswa.jsp">Insert Data</a>
    <table class="table table-hover">
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
            <td><%= PM.getDesc()%></td>
            <td><%= PM.getImage()%></td>
            <td>
                <form method="POST" action="/StarsPengumuman/DeletePengumumanMahasiswa">
                    <input type="hidden" name="id" value="<%= PM.getId() %>">
                    <input type="submit" value="Delete" name="Delete"/>
                </form>
            </td>
            <td>cell</td>
        </tr>
        <% }%>

    </table>
</div>


<%@include file="../Template/Footer.html"%>
