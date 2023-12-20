<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">

<head> 
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bella Estética|Cadastro</title>
  <link rel="stylesheet" href="./css/cadastro.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

</head>



<body>
  <div class="wrapper">
    <form method="get" action="novousu"> 
      <a href="./index.jsp"><h1>Bella Estética</h1></a>
      
       
      <div class="input-box">
        <div class="input-field">
          <input type="text" placeholder="Nome Completo" required name="nome">
          <i class='bx bxs-user'></i>
        </div>
        <div class="input-field">
          <input type="text" placeholder="Usuário" required name="usuario">
          <i class='bx bxs-user'></i>
        </div>
      </div>

      <div class="input-box">
        <div class="input-field">
          <input type="email" placeholder="Email" required name="email">
          <i class='bx bxs-envelope'></i>
        </div>
        <div class="input-field">
          <input type="number" placeholder="Celular" required name="celular">
          <i class='bx bxs-phone'></i>
        </div>
      </div>

      <div class="input-box">
        <div class="input-field">
          <input type="password" placeholder="Senha" required name="senha">
          <i class='bx bxs-lock-alt'></i>
        </div>
        <div class="input-field">
          <input type="password" placeholder="Confirmar Senha" required name="confirmarsenha">
          <i class='bx bxs-lock-alt'></i>
        </div>
      </div>

      <label><input type="checkbox">Ao clicar em Cadastre-se, você concorda com nossos Termos, Política de Privacidade e
        Política de Cookies. </label>

        <button type="submit" class="btn animate-btn">Enviar</button>
    </form>
  </div>

</body>

</html>