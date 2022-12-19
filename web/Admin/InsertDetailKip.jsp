<%@include file="../Template/Header.html"%>
<div class="container">
    <div class="row justify-content-center mt-4">
        <div class="col-md-4">
            <h1>Insert Data</h1>
            <form class="form-control card" method="POST"  action="/StarsPengumuman/InsertDetailKip">  
                NIM : <input class="form-control" type="text" name="nim"><br>
                Nama : <input class="form-control" type="text" name="nama"><br>
                Progdi : <input class="form-control"  type="text" name="progdi"><br>
                <input class="btn btn-outline-primary mt-2" type="submit" value="Insert">
            </form>
        </div>
    </div>
</div>
<%@include file="../Template/Footer.html"%>