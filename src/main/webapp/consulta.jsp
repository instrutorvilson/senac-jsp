<%@page import="java.sql.ResultSet"%>
<%@page import="controllers.ContatoController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Contatos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
	   rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" 
	   crossorigin="anonymous">
</head>
<body>
   <header class="mt-4">
        <h1 class="text-center">Consulta de Contatos</h1>
   </header>
   <nav>
       <%@ include file="menu.jsp" %>
   </nav>
   <main class="p-4">
       <table class="table table-striped">
         <thead>
             <tr>
                 <th>Id</th>
                 <th>Nome</th>
                 <th>Email</th>
             </tr>
         </thead>
         <tbody>
           <%
              ResultSet contatos = ContatoController.consultar();
              while(contatos.next()){
            	  out.print("<tr>");
            	  out.print("<td>"+ contatos.getString("id") +"</td>");
            	  out.print("<td>"+ contatos.getString("nome") +"</td>");
            	  out.print("<td>"+ contatos.getString("email") +"</td>");
            	  out.print("<tr>");
              }
           %>
         </tbody>
       </table>
   </main>
   <footer >
       <%@ include file="footer.jsp" %>
   </footer>
</body>
</html>