<%@include file="Template/Header.html"%>//templaiting header
<div class="container">
    <div class="row justify-content-center mt-4">
        <div class="col-md-4">
            <h1>Insert Data</h1>
            <form class="form-control card" method="POST"  action="InsertPengumumanMahasiswa">
                Title : <input class="form-control" type="text" name="title"><br>
                Category : <input class="form-control" type="text" name="category"><br>
                Type : <input class="form-control"  type="text" name="type"><br>
                Description : <textarea class="form-control"  name="desc" rows="10" cols="20"></textarea><br>
                <!--            Image : <input type="file" id="id" accept="image/png,image/jpeg" multiple="multiple">-->
                <input type="hidden" name="image" value=".">
                <input class="btn btn-outline-primary" type="submit" value="Insert">
            </form>
        </div>
    </div>
</div>
<%@include file="Template/Footer.html"%>//templating footer