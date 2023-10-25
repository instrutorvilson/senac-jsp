<%@page import="controllers.ContatoController"%>
<%@page import="modelos.Contato"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edição de Contatos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
	   rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" 
	   crossorigin="anonymous">
</head>
<body>
    <%
      String id = request.getParameter("id");
      Contato ct = ContatoController.consultar(Integer.parseInt(id));
    %>
   <header class="mt-4">
        <h1 class="text-center">Edição de Contatos</h1>
   </header>
   <nav>
       <%@ include file="menu.jsp" %>
   </nav>
   <main class="container m-5">
       <form action="gravar.jsp?editar=yes" method="POST">
         <label class="form-label">ID</label>
         <input type="text" class="form-control mb-3" name="id" value="<%out.print(id);%>">
         
         <label class="form-label">Informe nome</label>
         <input type="text" class="form-control mb-3" 
             placeholder="Informe nome" name="nome" value="<%out.print(ct.getNome());%>" >
         
         <label class="form-label">Informe email</label>
         <input type="email" class="form-control mb-3" 
           placeholder="Informe email" name="email" 
           value="<%out.print(ct.getEmail());%>">
         
         <div class="m-3">
              <button class="btn btn-outline-primary">Gravar</button>
         </div>
      </form>
   </main>
   <footer >
       <%@ include file="footer.jsp" %>
   </footer>
</body>
</html>