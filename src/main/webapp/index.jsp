<%@page import="modelos.Contato"%>
<%@page import="controler.ContatoControler"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="utils.Conexao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Minha Agenda</title>
</head>
<body>
    <h1>Agenda de Contatos</h1>
    <%
      //Conexao.conectar();
      Contato ct = new Contato(0,"Zezinho","zezinho@gmail.com");
      if(ContatoControler.salvar(ct)){
    	  out.print("Contato salvo com sucesso <br>");
      }
      
      ResultSet contatos = ContatoControler.consultar();
      while(contatos.next()){
    	  out.print(contatos.getString("id"));
    	  out.print(contatos.getString("nome"));
    	  out.print(contatos.getString("email"));
    	  out.print("<br>");
      }
    %>
</body>
</html>