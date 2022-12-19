<%@page import="java.util.List"%>
<%@page import="Model.KipModel"%>
<%@page import="DAO.UserDAO"%>
<%@include file="../Template/Header.html"%>
<%
    String id = request.getParameter("id");
    UserDAO DAO = new UserDAO();
    List<KipModel> listKip = DAO.getSingleDetailKip(id);

%>
<div class="container">
    <div class="row justify-content-center mt-4">
        <div class="col-md-4">
            <h1>Update Data</h1>
            <% for (KipModel model : listKip) { %>
            <form class="form-control card" method="POST"  action="/StarsPengumuman/UpdateDetailKip">
                <input type="hidden" id="id" name="id" value="<%= model.getId() %>">
                NIM : <input class="form-control" type="text" name="nim" value="<%= model.getNim()%>"><br>
                Nama : <input class="form-control" type="text" name="nama" value="<%= model.getNama()%>"><br>
                Progdi : <input class="form-control"  type="text" name="progdi" value="<%= model.getProgdi()%>"><br>
               
                <input class="btn btn-outline-primary mt-2" type="submit" value="Update">
            </form>
            <%}%>
        </div>
    </div>
</div>
<%@include file="../Template/Footer.html"%>