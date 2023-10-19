<%@page import="controllers.ContatoController"%>
<%@page import="modelos.Contato"%>
<%
   String nome = request.getParameter("nome");
   String email = request.getParameter("email");
   
   //model Contato
   Contato ct = new Contato(0,nome, email);
   
   //controler
   if(ContatoController.salvar(ct)){
	   response.sendRedirect("consulta.jsp");
   }
   
%>