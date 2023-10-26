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
        <h1 class="text-center">Cadastro de Contatos</h1>
   </header>
   <nav>
       <%@ include file="menu.jsp" %>
   </nav>
   <main class="container m-5">
       <form action="gravar.jsp?editar=no" method="POST">
         <label class="form-label">Informe nome</label>
         <input id="nome" type="text" class="form-control mb-3" placeholder="Informe nome" name="nome">
         
         <label class="form-label">Informe email</label>
         <input id="email" type="email" class="form-control mb-3" placeholder="Informe email" name="email">
         
         <div class="m-3">
              <button class="btn btn-outline-primary" onclick="validar()">Gravar</button>
         </div>
      </form>
   </main>
   <footer >
       <%@ include file="footer.jsp" %>
   </footer>
   <script>
        function validar(){
        	event.preventDefault();
        	
        	let inputNome = document.getElementById('nome')
        	if(inputNome.value == ''){
        		alert('Informe nome')
        		inputNome.focus()
        		return
        	}
        	
        	let inputEmail = document.getElementById('email')
        	if(inputEmail.value == ''){
        		alert('Informe email')
        		inputEmail.focus()
        		return
        	}
        	
        	document.getElementsByTagName('form')[0].submit()
        }
   </script>
</body>
</html>