<%-- 
    Document   : PengumumanMahasiswa
    Created on : Dec 9, 2022, 2:20:20 PM
    Author     : HP
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DAO.UserDAO"%>
<%@page import="java.util.List"%>
<%@page import="Model.UserModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pengumuman Mahasiswa</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>
    <body>
        <%
            DAO.UserDAO userDao = new DAO.UserDAO();
            List<UserModel> pengumumanMahasiswa = new ArrayList<UserModel>();
            pengumumanMahasiswa = userDao.getAllPengumumanMahasiswa();

//            for (UserModel PM : pengumumanMahasiswa) {
//                out.print(PM.getId());
//                out.print(PM.getTitle());
//                out.print(PM.getCategory());
//                out.print(PM.getType());
//                out.print(PM.getDesc());
//                out.print(PM.getImage());
//            }
        %>
        <div class="container">
            <div class="row mt-5">
                <% for (UserModel PM : pengumumanMahasiswa) { %>

                <div class="col-md-4 mb-3">
                    <div class="card w-100" style="width: 18rem;">
                        <img src="..." class="card-img-top" alt="...">
                        <div class="card-body"> 
                            <div class="d-flex justify-content-between">
                                <p></p>
                                <p></p>
                                <p><% out.print(PM.getCategory()); %></p>
                            </div>
                            <h5><% out.print(PM.getTitle()); %></h5>
                            <p class="card-text"><% out.print(PM.getDesc()); %></p>
                            <p class="card-text"><% out.print(PM.getType()); %></p>
                            <div class="m-2 w-100 ">
                                <a class="btn btn-primary w-100" href="/details/<%= PM.getId() %>">Selengkapnya</a>
                            </div>
                        </div>
                    </div>
                </div>
                <% }%>
            </div>
        </div>
    </body>
</html>
