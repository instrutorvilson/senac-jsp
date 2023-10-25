<%@page import="controllers.ContatoController"%>
<%@page import="modelos.Contato"%>
<%
   int id = 0;
   String nome = request.getParameter("nome");
   String email = request.getParameter("email");
   
   String editar = request.getParameter("editar");
   if(editar.equals("yes")){
	 id = Integer.parseInt(request.getParameter("id"));  
   }    
   //model Contato
   Contato ct = new Contato(id,nome, email);
   
   //controler
   if(ContatoController.salvar(ct)){
	   response.sendRedirect("consulta.jsp");
   }
   
%>