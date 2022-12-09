<%@ page import = "java.io.*,java.util.*" %>

<html>
   <head>
      <title>Page Redirection</title>
   </head>
   
   <body>
      <center>
         <h1>Page Redirection</h1>
      </center>
      <%
         // New location to be redirected
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", "/StarsPengumuman/PengumumanMahasiswa.jsp"); 
      %>
   </body>
</html>