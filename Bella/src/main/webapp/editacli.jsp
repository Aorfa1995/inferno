<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="cep.js" type="text/javascript"></script>

</head>
<body>

<div class="container">

	<div class="row">
		<div class="col-md-12 text-center">
		<h4>Atualização de Dados</h4>
		</div>
	</div>
  
  <form method="get" action="Editar">
 
  <div class="form-row">
  
  <div class="col-md-2 mb-3">
    <label for="idusuario">Id usuário</label>
    <input type="text" class="form-control" name="idusuario" value="<%out.print(request.getAttribute("idusuario"));%>" readonly>   
   </div>
  
    <div class="col-md-2 mb-3">
    <label for="idcliente">Id cliente</label>
    <input type="text" class="form-control" name="idcliente" value="<%out.print(request.getAttribute("idcliente"));%>" readonly>   
   </div>
  
   <div class="col-md-6 mb-3">
    <label for="nome">Nome</label>
    <input type="text" class="form-control" id="" placeholder="Digite Nome" name="nome" value="<%out.print(request.getAttribute("nome"));%>">
  </div>
  
   <div class="col-md-2 mb-3">
    <label for="telefone">Telefone</label>
    <input type="text" class="form-control" id="" placeholder="Digite Telefone" name="telefone" value="<%out.print(request.getAttribute("telefone"));%>">
  </div>
  
  
  <div class="form-row">
    <div class="col-md-6 mb-3">
    <label for="email">Email</label>
    <input type="email" class="form-control" id="" placeholder="Digite Email" name="email" value="<%out.print(request.getAttribute("email"));%>">
  </div>

 
 
  	</div>
  
  
  <button type="submit" class="btn btn-primary">Enviar</button>
</form>



</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>
