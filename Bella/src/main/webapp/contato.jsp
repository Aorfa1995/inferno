<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="./img/tratamento-facial.png" type="image/x-icon">
  <title>Bella Estética</title>
  <!-- para inserir icone -->
  <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
  <!-- Google fonts - Montserrat -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=M+PLUS+Rounded+1c:wght@300;400;500&family=Montserrat:ital,wght@0,300;0,400;0,500;1,200;1,300;1,400;1,500&family=Nunito:ital,wght@1,300;1,400;1,500;1,600&family=Poppins:ital,wght@1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
    rel="stylesheet">
  <!-- CSS Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <!-- Bootstrap icon -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
  <!-- CSS do projeto  -->
  <link rel="stylesheet" href="./css/style.css">
  <!-- javascrypt Bootstrap -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>
</head>

<body>


  <!-- NAV BAR -->
  <nav class="navbar navbar-expand-lg fixed-top bg-primary-color" id="navbar">
    <div class="container py-3">
      <!-- Icone -->
      <a class="navbar-brand" href="./index.jsp">
        <img src="img/tratamento-facial.png" alt="Bella Estetica" />
        <span>Bella Estética</span>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-items"
        aria-controls="navbar-items" aria-expanded="false" aria-label="Toggle navigation">
        <i class="bi bi-list"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbar-items">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link primary-color  " aria-current="page" href="./index.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link primary-color" href="./sobre.jsp">Sobre nós</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Tratamentos</a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="./Tfacial.jsp">Facial</a></li>
              <li><a class="dropdown-item" href="./Tcorporal.jsp">Corporal</a></li>
              <li><a class="dropdown-item" href="./Temagrecimento.jsp">Emagrecimento</a></li>
            </ul>
          <li class="nav-item">
            <a class="nav-link primary-color active" href="./contato.jsp">Contato</a>
          </li>
          <li class="nav-item">
            <a class="nav-link primary-color" href="./login.jsp">Entrar</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

<body>
 
  <section class="contato">
    <div class="container">
      <div class="mapa">
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3679.263455526758!2d-43.45324822391467!3d-22.755602132486842!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9967a99225f96f%3A0xec20bfc8ff090b46!2sSenac%20Nova%20Igua%C3%A7u!5e0!3m2!1spt-BR!2sbr!4v1701112441442!5m2!1spt-BR!2sbr"
          width="100%" height="500" style="border:0;" allowfullscreen="" loading="lazy"
          referrerpolicy="no-referrer-when-downgrade"></iframe>
      </div>
    </div>
  </section>


</body>