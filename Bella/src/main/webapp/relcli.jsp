<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
    
    <!-- importação das classes arraylist -->
   
    <%@page import= "model.Cliente" %>
    <%@page import= "java.util.ArrayList" %>
    
    <%
    ArrayList<Cliente> lista =( ArrayList<Cliente>)request.getAttribute("clientes");
    %>
    

    
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <!-- Meta tags Obrigatórias -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    
  </head>
  <body>
  <div class ="container-fluid">
  <div class= "row">
  <div class="col-md-12 text-center">
  
  <h3>Relatorio de Usuarios</h3>
  
  </div>
  </div>
  <div class= "row">
  <table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">ID de cliente</th>
      <th scope="col">Nome</th>
      <th scope="col">Telefone</th>
      <th scope="col">Email</th>
      
      
    </tr>
  </thead>
  <tbody>
  	<% 
  	for(int i=0;i<lista.size();i++){
  
 	 %>
    <tr>
      <td><%=lista.get(i).getIdcliente()%></td>
      <td><%=lista.get(i).getNome()%></td>
      <td><%=lista.get(i).getTelefone() %></td>
      <td><%=lista.get(i).getEmail() %></td>
      
      
      <td><a href="boteditar?idcliente=<%=lista.get(i).getIdcliente()%>"><button type ="button" class="btn btn-primary">Editar</button></a></td>
      <td><a href="exibirdados?idcliente=<%=lista.get(i).getIdcliente()%>"><button type ="button" class="btn btn-danger">Excluir</button></a></td>
           
    </tr>
       <%} %>
  </tbody>
</table>
  
  
  </div>
  </div>
   

    <!-- JavaScript (Opcional) -->
    <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>