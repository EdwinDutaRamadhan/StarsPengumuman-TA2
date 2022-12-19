<%@page import="java.util.List"%>
<%@page import="Model.BeasiswaModel"%>
<%@page import="DAO.UserDAO"%>
<%@include file="../Template/Header.html"%>
<%
    String id = request.getParameter("id");
    UserDAO DAO = new UserDAO();
    List<BeasiswaModel> listBeasiswa = DAO.getSingleDetailBeasiswa(id);

%>
<div class="container">
    <div class="row justify-content-center mt-4">
        <div class="col-md-4">
            <h1>Update Data</h1>
            <% for (BeasiswaModel model : listBeasiswa) { %>
            <form class="form-control card" method="POST"  action="/StarsPengumuman/UpdateDetailBeasiswa">
                <input type="hidden" id="id" name="id" value="<%= model.getId() %>">
                Nama : <input class="form-control" type="text" name="nama" value="<%= model.getNama()%>"><br>
                NIM : <input class="form-control" type="text" name="nim" value="<%= model.getNim()%>"><br>
                Besaran : <input class="form-control"  type="text" name="besaran" value="<%= model.getBesaran()%>"><br>
               
                <input class="btn btn-outline-primary mt-2" type="submit" value="Update">
            </form>
            <%}%>
        </div>
    </div>
</div>
<%@include file="../Template/Footer.html"%>