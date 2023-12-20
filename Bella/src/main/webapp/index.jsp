<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>

 <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="./img/tratamento-facial.png" type="image/x-icon">
  <title>Bella Est�tica</title>
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
        <img src="img/tratamentos/tratamento-facial.png" alt="Bella Estetica" />
        <span>Bella Est�tica</span>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-items"
        aria-controls="navbar-items" aria-expanded="false" aria-label="Toggle navigation">
        <i class="bi bi-list"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbar-items">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link primary-color active " aria-current="page" href="./index.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link primary-color" href="./sobre.jsp">Sobre n�s</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Tratamentos</a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="./Tfacial.jsp">Facial</a></li>
              <li><a class="dropdown-item" href="./Tcorporal.jsp">Corporal</a></li>
              <li><a class="dropdown-item" href="./Temagrecimento.jsp">Emagrecimento</a></li>
            </ul>
          <li class="nav-item">
            <a class="nav-link primary-color" href="./contato.jsp">Contato</a>
          </li>
          <li class="nav-item">
            <a class="nav-link primary-color" href="./login.jsp">Entrar</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>


  <!-- SLIDER -->
  <div class="container" id="slider-container">
    <div id="slider" class="carousel slide" data-bs-ride="carousel">
      <!-- indicadores do carrosel  -->
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#slider" data-bs-slide-to="0" class="active" aria-current="true"
          aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#slider" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#slider" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <!-- conteudo interno carrosel  -->
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="img/banner/facial.jpg" class="d-block w-100" alt="Est�tica facial" />
          <!-- legenda slide -->
          <div class="carousel-caption">
            <h5>Sua jornada para uma pele deslumbrante come�a aqui! </h5>
            <a href="#" class="btn btn-dark">Agendar Avalia��o  </a>
          </div>
        </div>
        <div class="carousel-item">
          <img src="./img/banner/corp.jpg" class="d-block w-100" alt="Est�tica corporal" />
          <div class="carousel-caption">
            <h5>D� ao seu corpo o tratamento que ele merece! </h5>
            <a href="#" class="btn btn-dark">Agendar Avalia��o  </a>
          </div>
        </div>
        <div class="carousel-item">
          <img src="./img/banner/emagrecimentoo.jpg" class="d-block w-100" alt="T�cnicas de emagrecimento" />
          <div class="carousel-caption">
            <h5>Fa�a do seu emagrecimento uma experi�ncia excepcional! </h5>
            <a href="#" class="btn btn-dark">Agendar Avalia��o  </a>
          </div>
        </div>
      </div>
      <!-- bot�es para passar slide  -->
      <button class="carousel-control-prev" type="button" data-bs-target="#slider" data-bs-slide="prev">
        <!-- icone bot�o -->
        <i class="bi bi-chevron-compact-left"></i>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#slider" data-bs-slide="next">
        <i class="bi bi-chevron-compact-right"></i>
        <span class="visually-hidden">Next</span>
      </button>
    </div>

    <div class="container">
      <div class="pricing-area">
          <div class="container">
              <div class="row">
                  <div class="col-lg-4">
                      <div class="single-pricing">
                          <div class="deal-type">1� SEMANA 01/23</div>
                          <div class="deal-amount">
                              <div class="price">
                                  <span class="money"><!-- <sup>%</sup> -->40% OFF</span>
                              </div>
                              <!-- <h4>/year</h4> -->
                          </div>
                          <ul class="single-deal">
                              <li>Lorem ipsum dolor sit.</li>
                              <li>Lorem ipsum dolor sit.</li>
                          </ul>
                          <a class="btn">EU QUERO</a>
                      </div>
                  </div>
                  <div class="col-lg-4">
                      <div class="single-pricing">
                          <div class="deal-type">2� SEMANA 12/23</div>
                          <div class="deal-amount">
                              <div class="price">
                                <span class="money"><!-- <sup>%</sup> -->30% OFF</span>
                              </div>
                             <!--  <h4>/year</h4> -->
                          </div>
                          <ul class="single-deal">
                            <li>Lorem ipsum dolor sit.</li>
                            <li>Lorem ipsum dolor sit.</li>
                          </ul>
                          <a class="btn">EU QUERO</a>
                      </div>
                  </div>
                  <div class="col-lg-4">
                      <div class="single-pricing">
                          <div class="deal-type">3� SEMANA 01/23</div>
                          <div class="deal-amount">
                              <div class="price">
                                <span class="money"><!-- <sup>%</sup> -->50% OFF</span>
                              </div>
                             <!--  <h4>/year</h4> -->
                          </div>
                          <ul class="single-deal">
                            <li>Lorem ipsum dolor sit.</li>
                            <li>Lorem ipsum dolor sit.</li>
                          </ul>
                          <a class="btn">EU QUERO</a>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
    
    <!-- mini banners  -->
  <!--   <div class="col-12 col-md-10 offset-md-1" id="mini-banners">
      <div class="row">
        <div class="col-12 col-md-4">
          <div class="card text-center">
            <i class="bi bi-calendar-heart"></i>
            <div class="card-body">
              <h5 class="card-title primary-color">Promo��es da semana </h5>
              <br class="card-text secondary-color">
              -Limpeza de pele.</br>
              -Massagem modeladora.
              </p>
              <a href="#" class="btn btn-dark">15%OFF</a>
            </div>
          </div>
        </div>
        <div class="col-12 col-md-4">
          <div class="card text-center">
            <i class="bi bi-person-hearts"></i>
            <div class="card-body primary-color">
              <h5 class="card-title primary-color">Tratamento combinados</h5>
              <br class="card-text secondary-color">
              -Receba um desconto especial no segundo tratamento.
              </br>
              </p>
              <a href="#" class="btn btn-dark">30%OFF</a>
            </div>
          </div>
        </div>
        <div class="col-12 col-md-4">
          <div class="card text-center">
            <i class="bi bi-people-fill"></i>
            <div class="card-body">
              <h5 class="card-title primary-color">Traga um amigo(a)</h5>
              <p class="card-text secondary-color">
                -Ambos ganham um desconto incr�vel em qualquer tratamento.
              </p>
              <a href="#" class="btn btn-dark">60%OFF</a>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div> -->

  <!-- DESTAQUES -->

  <div class="container" id="featured-container">
    <div class="col-12">
      <h2 class="title primary-color">Conhe�a nossos Tratamentos </h2>
      <p class="subtitle secondary-color">
        "Descubra a jornada da sua pele para a radi�ncia! Explore nossa se��o exclusiva de tratamentos e inicie uma
        experi�ncia transformadora para uma pele saud�vel e deslumbrante. Clique nos cards para conhecer nossas op��es
        de
        cuidados especializados."
      </p>
    </div>
    <div class="col-12" id="featured-images">
      <!-- g-4 para aplicar espa�amento entre as colunas/ separar as imagens  -->
      <div class="row g-4">
        <div class="col-12 col-md-4">
          <img src="./img/tratamentos/Limpeza pele.jpg" alt="Projeto 1" class="img-fluid" />
          <div class="banner-content">
            <p class="secondary-color">Facial</p>
            <h3>Limpeza de pele</h3>
          </div>
        </div>
        <div class="col-12 col-md-4">
          <img src="./img/tratamentos/enzima capilar.jpg" alt="Projeto 2" class="img-fluid" />
          <div class="banner-content">
            <p class="secondary-color">Corporal</p>
            <h3>Enzimas capilares</h3>
          </div>
        </div>
        <div class="col-12 col-md-4">
          <img src="./img/tratamentos/preenchimento.jpg" alt="Projeto 3" class="img-fluid" />
          <div class="banner-content">
            <p class="secondary-color">Facial</p>
            <h3>Preenchimento Labial</h3>
          </div>
        </div>
        <div class="col-12 col-md-4">
          <img src="./img/tratamentos/boutox.jpg" alt="Projeto 4" class="img-fluid" />
          <div class="banner-content">
            <p class="secondary-color">Facial</p>
            <h3>Toxina Botul�nica </h3>
          </div>
        </div>
        <div class="col-12 col-md-4">
          <img src="./img/tratamentos/drenagem.jpg" alt="Projeto 5" class="img-fluid" />
          <div class="banner-content">
            <p class="secondary-color">Corporal</p>
            <h3>Drenagem Linf�tica</h3>
          </div>
        </div>
        <div class="col-12 col-md-4">
          <img src="./img/tratamentos/depila��o.jpg" alt="Projeto 6" class="img-fluid" />
          <div class="banner-content">
            <p class="secondary-color">Corporal</p>
            <h3>Depila��o a laser</h3>
          </div>
        </div>
        <div class="col-12 col-md-4">
          <img src="./img/tratamentos/enzima veias.jpg" alt="Projeto 6" class="img-fluid" />
          <div class="banner-content">
            <p class="secondary-color">Corporal</p>
            <h3>Microvasos</h3>
          </div>
        </div>
        <div class="col-12 col-md-4">
          <img src="./img/tratamentos/criolip.jpg" alt="Projeto 6" class="img-fluid" />
          <div class="banner-content">
            <p class="secondary-color">Emagrecimento</p>
            <h3>Criolip�lise </h3>
          </div>
        </div>
        <div class="col-12 col-md-4">
          <img src="./img/tratamentos/enzima corpo.jpg" alt="Projeto 6" class="img-fluid" />
          <div class="banner-content">
            <p class="secondary-color">Emagrecimento</p>
            <h3>Enzimas Corporais</h3>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- EQUIPE -->
  <div class="container" id="info-container">
    <div class="col-12">
      <h2 class="title primary-color"> Beleza elevada � pot�ncia m�xima!</h2>
      <p class="subtitle secondary-color">
        D� ao seu corpo e rosto a aten��o que eles merecem! Nossos profissionais s�o mestres na arte da est�tica,
        prontos para revelar a sua beleza �nica. Deixe-nos cuidar de voc�, porque voc� merece o melhor!
      </p>
    </div>
    <div class="col-12">
      <div class="row">
        <div class="col-12 col-md-5" id="info-banner">
          <img src="img/equipe/equipe.jpg" alt="Informa��es" class="img-fluid" />
        </div>
        <div class="col-12 col-md-7 bg-secondary-color" id="info-content">
          <div class="row">
            <div class="col-12">
              <h2 class="">Conhe�a nossos Profissionais</h2>
              <br class="subtitle secondary-color">
              Nossos farmac�uticos, especializados em est�tica, trazem consigo uma combina��o �nica de conhecimento
              cient�fico, habilidade pr�tica e paix�o pela beleza. Cada profissional passa por treinamentos cont�nuos
              e atualiza��es para garantir que estejam sempre � frente das �ltimas tend�ncias e t�cnicas inovadoras.
              </br></br>
              Acreditamos firmemente na import�ncia de ser tratado por profissionais qualificados, especialmente quando
              se trata de cuidados est�ticos.
              </br></br>
              A seguran�a dos nossos clientes � a nossa prioridade. Nossos profissionais seguem protocolos rigorosos,
              garantindo a seguran�a e o bem-estar durante todos os procedimentos.
              </br></br>
              Estamos aqui para elevar a sua beleza, promover a autoestima e garantir que cada visita � nossa cl�nica
              seja uma experi�ncia �nica e memor�vel. Confiar em profissionais qualificados � o primeiro passo para
              conquistar a melhor vers�o de si mesmo. Venha descobrir a diferen�a que a excel�ncia em cuidados est�ticos
              pode fazer na sua vida.
              </p>
            </div>
            <!-- informativos numericos  -->
            <!--  <div class="col-12" id="info-numbers">
              <div class="row">
                <div class="col-4">
                  <h3 class="primary-color">18</h3>
                  <p class="secondary-color">Anos na constru��o civil</p>
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
              <a class="btn btn-dark">Mais Sobre N�s</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


  <!-- FOOTER -->
  <footer class="container-fluid bg-dark-color" id="footer">
    <div class="container">
      <div class="row">

        <!-- FOOTER TOP -->
        <div class="col-12" id="footer-top">
          <div class="row justify-content-between">
            <div class="col-4">
              <h2>
                Bella Est�tica
              </h2>
            </div>
            <div class="col-4" id="social-icons">
              <i class="bi bi-instagram"></i>
              <i class="bi bi-twitter"></i>
              <i class="bi bi-facebook"></i>
              <i class="bi bi-whatsapp"></i>
            </div>
          </div>
        </div>

        <!-- FOOTER DETAILS -->
        <div class="col-12" id="footer-details">
          <div class="row">
            <div class="col-12 col-md-4" id="news-container">
              <h4>Fique por dentro das novidades</h4>
              <p class="secondary-color">
                Inscreva-se para saber em primeira m�o
              </p>
              <form>
                <div class="mb-3">
                  <input type="email" class="form-control" placeholder="Digite o seu e-mail" />
                </div>
                <button class="btn btn-dark">Inscrever</button>
              </form>
            </div>
            <div class="col-12 col-md-4" id="contact-container">
              <h4>Formas de contato</h4>
              <p class="secondary-color">(48)9999-9999</p>
              <p class="secondary-color">contato@belaaesteticacom</p>
            </div>
            <div class="col-12 col-md-4" id="links-container">
              <div class="row">
                <h4>Voc� pode estar buscando por:</h4>
                <div class="col-6">
                  <!-- lista padr�o bootstrap -->
                  <ul class="list-unstyled">
                    <li><a href="#" class="secondary-color">Facial</a></li>
                    <li><a href="#" class="secondary-color">Corporal </a></li>
                    <li><a href="#" class="secondary-color">Emagrecimento</a></li>
                  </ul>
                </div>
                <div class="col-6">
                  <ul class="list-unstyled">
                    <li><a href="#" class="secondary-color">Sobre n�s</a></li>
                    <li><a href="#" class="secondary-color">Contato</a></li>
                    <li>
                      <a href="#" class="secondary-color">Cadastro</a>
                    </li>
                    <li><a href="#" class="secondary-color">Login</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- FOOTER BOTTOM -->
        <div class="col-12" id="footer-bottom">
          <div class="row justify-content-between">
            <div class="col-12 col-md-3">
              <br class="secondary-color">Bella Est�tica &copy; 2023</p>
            </div>
            <div class="col-12 col-md-3">
              <p class="secondary-color">
                Realizamos o seu projeto com
                <i class="bi bi-heart"></i>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>


</body>

</html>