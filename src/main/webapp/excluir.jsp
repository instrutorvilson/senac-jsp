<%@page import="controllers.ContatoController"%>
<%@page import="modelos.Contato"%>
<%
   int id = Integer.parseInt(request.getParameter("id"));
   //controler
   if(ContatoController.excluir(id)){
	   response.sendRedirect("consulta.jsp");
   }   
%>