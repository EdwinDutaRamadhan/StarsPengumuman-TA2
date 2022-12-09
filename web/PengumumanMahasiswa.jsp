<%@page import="java.util.ArrayList"%>
<%@page import="DAO.UserDAO"%>
<%@page import="java.util.List"%>
<%@page import="Model.UserModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Template/Header.html"%>
    <%@ include file="Template/NavWithIcon.html" %>
        <%
            DAO.UserDAO userDao = new DAO.UserDAO();//Alias DAO sebagai Object
            List<UserModel> pengumumanMahasiswa = new ArrayList<UserModel>();//pengumumanMahasiswa merupakan list dalam bentuk ArrayList yang berisi UserModel
            pengumumanMahasiswa = userDao.getAllPengumumanMahasiswa();//Perintah untuk menjalankan class getAllPengumumanMahasiswa pada DAO
        %>
        <div class="container-fluid" style="background: url('https://mlc-wels.edu/events/wp-content/uploads/sites/50/2015/12/Auditorium-2-1500x1001.jpg');background-position: center; height: 400px;">
            <div class="container">
                <h1 class="text-primary text-left pt-5">Pengumuman</h1>
            </div>
        </div>
        <div class="container">
            <div class="row mt-5">
                <% for (UserModel PM : pengumumanMahasiswa) { // perulangan semua data yg ada di List<UserModel>%>
                

                <div class="col-md-4 mb-3">
                    <div class="card w-100" style="width: 18rem;">
                        <img src="<%= PM.getImage() %>" class="card-img-top" alt="...">
                        <div class="card-body"> 
                            <div class="d-flex justify-content-between">
                                <p></p>
                                <p></p>
                                <p><% out.print(PM.getCategory()); %></p>
                            </div>
                            <h5><% out.print(PM.getTitle()); %></h5>
                            <p class="card-text"><%= PM.getDesc() %></p>
                            <p class="card-text"><%= PM.getType() %></p>
                            <div class="m-2 w-100 ">
                                <a class="btn btn-primary w-100" href="/details/<%= PM.getId() %>">Selengkapnya</a>
<!--                                button details yang menumpangkan data ID-->
                            </div>
                        </div>
                    </div>
                </div>
                <% }%>
            </div>
        </div>
<%@include file="Template/Footer.html"%>