<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bella Est�tica|Login</title>
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link rel="stylesheet" href="./css/login.css">

</head>
<body>


<style>

@import url('https://fonts.googleapis.com/css2?family=M+PLUS+Rounded+1c:wght@300;400;500&family=Nunito:ital,wght@1,300;1,400;1,500;1,600&family=Poppins:ital,wght@1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}

body {
  display: flex;
  justify-content: center;
  align-items: center;
  /* posiciona no meio da tela */
  min-height: 100vh;
  background-image: linear-gradient(to right, rgb(226, 199, 153), rgb(192, 130, 97));
}

.wrapper {
  width: 420px;
  background: rgba(255, 255, 255, .1);
  border: 2px solid rgba(255, 255, 255, .2);
  backdrop-filter: blur(20px);
  box-shadow: 0 0 10px rgba(0, 0, 0, .2);
  color: #ffff;
  border-radius: 10px;
  /* distancia interna */
  padding: 30px 40px;
}
.wrapper a {
  text-decoration: none;
}
.wrapper a h1 {
  color: #ffff;
  text-decoration-line: none;
  font-size: 36px;
  text-align: center;
  text-decoration: none;
}

.wrapper .input-box {
  position: relative;
  width: 100%;
  height: 50px;
  margin: 30px 0;
}

.input-box input {
  width: 100%;
  height: 100%;
  background: transparent;
  border: none;
  outline: none;
  border: 2px solid rgba(255, 255, 255, .2);
  border-radius: 40px;
  border-radius: 40px;
  font-size: 16px;
  color: #ffff;
  /* posicionamento  */
  padding: 20px 45px 20px 20px;
}

.input-box input::placeholder {
  color: #ffff;
}

/* verrrrrrr */
.input-box i {
  position: absolute;
  top: 50%;
  right: 20px;
  transform: translateY(-50%);
}

.wrapper .remember-forgot {
  display: flex;
  justify-content: space-between;
  font-size: 14.5px;
  margin: -15px 0 15px;
}

.remember-forgot label input {
  accent-color: #fff;
  margin-right: 3px;
}

.remember-forgot a {
  color: #fff;
  text-decoration: none;
}

/* efeito */
.remember-forgot a:hover {
  text-decoration: underline;
}

.wrapper .btn {
  width: 100%;
  height: 45px;
  background: #fff;
  border: none;
  outline: none;
  border-radius: 40px;
  box-shadow: 0 0 10px rgba(0, 0, 0, .1);
  cursor: pointer;
  font-size: 16px;
  color: #333;
  font-weight: 600;
}

.btn .animate-btn {
  animation: animate-outline 1s ease-out infinite;
}

.btn:hover {
  background-color: #ffffffb7;
}

.wrapper .register-link {
  font-size: 14.5px;
  text-align: center;
  margin: 20px 0 15px;
}

.register-link p {
  color: #fff;
  text-decoration: none;
  font-weight: 900;
}

.register-link a {
  color: rgb(26, 24, 23);
  text-decoration: none;
  font-weight: 600;

}

.register-link a:hover {
  text-decoration: underline;
}
</style>
  <div class="wrapper">
   <form method="post" action="login">
      <!-- tornar o noma ancora para a home  -->
      <a href="./index.jsp"><h1>Bella Est�tica</h1></a>
      <!-- usuario -->
      <div class="input-box">
        <input type="text" placeholder="Usu�rio" required name="usuario">
        <i class='bx bxs-user'></i>
      </div>
      <!-- senha -->
      <div class="input-box">
        <input type="password" placeholder="Senha" required name="senha">
        <i class='bx bxs-lock-alt'></i>
      </div>
      <div class="remember-forgot">
        <label><input type="checkbox">Lembre me</label>
        <a href="#">Esqueceu a conta?</a>
      </div>
      <button type="submit" class="btn animate-btn">Login</button>
      <div class="register-link">
        <p>N�o possui conta?<a href="./cadastro.jsp"> Cadastrar-se</a></p>
      </div>
    </form>
  </div>
</body>
</html>