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
  <!-- EQUIPE -->
  <div class="container" id="info-container">
    <div class="col-12">
      <h2 class="title primary-color"> Beleza elevada à potência máxima!</h2>
      <p class="subtitle secondary-color">
        Dê ao seu corpo e rosto a atenção que eles merecem! Nossos profissionais são mestres na arte da estética,
        prontos para revelar a sua beleza única. Deixe-nos cuidar de você, porque você merece o melhor!
      </p>
    </div>
    <div class="col-12">
      <div class="row">
        <div class="col-12 col-md-5" id="info-banner">
          <img src="img/donas.jpg" alt="Informações" class="img-fluid" />
        </div>
        <div class="col-12 col-md-7 bg-secondary-color" id="info-content">
          <div class="row">
            <div class="col-12">
              <h2 class="">--------</h2>
              <br class="subtitle secondary-color">
              Bem-vindo à Bella Estética, a nova referência em cuidados estéticos, onde a beleza se encontra com a
              excelência. Em um mundo movido pela busca da perfeição, nasce uma clínica que vai além das expectativas,
              unindo expertise, inovação e comprometimento inigualável.
              </br></br>
              Nosso compromisso é estabelecer um padrão elevado no mercado de estética, sendo uma clínica que não apenas
              segue tendências, mas que as define. Na Bella Estética, cada detalhe é cuidadosamente elaborado para
              proporcionar uma experiência única, transformadora e, acima de tudo, saudável.
              </br></br>
              Reconhecemos a importância de um emagrecimento que vai além da estética, abraçando a saúde e o bem-estar.
              Nossos profissionais especializados guiarão você em uma jornada personalizada, combinando orientação
              nutricional, atividade física e tratamentos específicos para alcançar um emagrecimento saudável e
              sustentável.
              </br></br>
              Seja parte desta jornada extraordinária em busca da melhor versão de você mesmo. Descubra a diferença
              Bella Estética e experimente um novo padrão em cuidados estéticos. Sua beleza é nossa paixão, sua
              confiança é nossa prioridade. Estamos ansiosos para recebê-lo na Bella Estética, onde a excelência
              encontra a sua beleza única.
              </p>
            </div>
            <!-- informativos numericos  -->
            <!--  <div class="col-12" id="info-numbers">
              <div class="row">
                <div class="col-4">
                  <h3 class="primary-color">18</h3>
                  <p class="secondary-color">Anos na construção civil</p>
                </div>
                <div class="col-4">
                  <h3 class="primary-color">95</h3>
                  <p class="secondary-color">Projetos executados</p>
                </div>
                <div class="col-4">
                  <h3 class="primary-color">639</h3>
                  <p class="secondary-color">Clientes</p>
                </div>
              </div>
            </div> -->
            <div class="col-12">
              <a class="btn btn-dark">Agendar Avaliação</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


</body>