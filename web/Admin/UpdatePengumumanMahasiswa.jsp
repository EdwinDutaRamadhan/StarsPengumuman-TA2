<%@page import="java.util.List"%>
<%@page import="Model.UserModel"%>
<%@page import="DAO.UserDAO"%>
<%@include file="../Template/Header.html"%>
<%
    String id = request.getParameter("id");
    UserDAO DAO = new UserDAO();
    List<UserModel> listPengumuman = DAO.getSinglePengumumanMahasiswa(id);

%>
<div class="container">
    <div class="row justify-content-center mt-4">
        <div class="col-md-4">
            <h1>Update Data</h1>
            <% for (UserModel model : listPengumuman) { %>
            <form class="form-control card" method="POST"  action="/StarsPengumuman/UpdatePengumumanMahasiswa">
                <input type="hidden" id="id" name="id" value="<%= model.getId() %>">
                Title : <input class="form-control" type="text" name="title" value="<%= model.getTitle()%>"><br>
                Category : <input class="form-control" type="text" name="category" value="<%= model.getCategory()%>"><br>
                Type : <input class="form-control"  type="text" name="type" value="<%= model.getType()%>"><br>
                Description : <textarea class="form-control"  name="desk" rows="10" cols="20" ><%= model.getDesk()%></textarea><br>
<!--                Image : <input type="file" id="id" accept="image/png,image/jpeg" multiple="multiple">-->
                Image(LINK) : <input type="text" name="image" value="<%= model.getImage() %>">
                <input class="btn btn-outline-primary mt-2" type="submit" value="Update">
            </form>
            <%}%>
        </div>
    </div>
</div>
<%@include file="../Template/Footer.html"%>