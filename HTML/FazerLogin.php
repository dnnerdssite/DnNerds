<?php
session_start();
include_once("config.php");

if (isset($_POST['email']) && isset($_POST['senha'])) {
    $email = $_POST['email'];
    $senha = $_POST['senha'];

    // Verifica se o usuário existe
    $sql = "SELECT * FROM usuarios WHERE email = '$email' AND senha = '$senha' LIMIT 1";
    $result = $conexao->query($sql);

    if ($result->num_rows > 0) {
        // Usuário encontrado
        $usuario = $result->fetch_assoc();
        $_SESSION['id'] = $usuario['id'];
        $_SESSION['nome'] = $usuario['nome'];
        $_SESSION['email'] = $usuario['email'];

        // Redireciona para página inicial
        header("Location: ../HTML/noticias.php");
        exit;
    } else {
        // Usuário ou senha inválidos
        echo "❌ Email ou senha incorretos!";
    }
} else {
    echo "Preencha todos os campos!";
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DnNerds</title>
    <link rel="stylesheet" href="../Styles/Header.css?v=12">
    <link rel="stylesheet" href="../Styles/FazerLogin.css?v=4">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Anonymous+Pro:ital,wght@0,400;0,700;1,400;1,700&family=Caveat&family=Open+Sans:ital,wght@0,400;0,600;0,700;0,800;1,400&family=Poppins:wght@300;600;800&display=swap"
        rel="stylesheet">

</head>

<body>

    <header>
        <!--Navegar-->
        <nav class="navbar">
            <h2 class="title">DnNerds <img src="../Imagens/favicon.png" alt=""></h2>
            <!--img da logo aqui-->

            <ul>


                <li>
                    <!--Notícias-->
                    <a href="../HTML/noticias.php">Notícias</a>
                </li>
                <li>
                    <!--Tier List-->
                    <a href="">NerdList</a>
                </li>
                <li>
                    <!--Quizzes-->
                    <a href="">Quizzes</a>
                </li>
                <li>
                    <!--Copinha-->
                    <a href="">IA</a>
                </li>

            </ul>
            <div class="search-container">
                <img id="lupa" src="../Imagens/lupa_FundoPreto.png" alt="Lupa">
                <input type="search" name="search" id="search" placeholder="Buscar...">
            </div>

            <!-- Botão para criar a conta -->
            <button class="btn-navbar"><a href="../HTML/CriarConta.php">Criar Conta</a></button>
        </nav>

    </header>

    <!-- Principal -->
    <main class="container"></main>

    <!-- Título -->
    <h1>Bem-Vindo!</h1>
    <!-- Subtitulo -->
    <p>Novo no Yarney? <a href="../HTML/CriarConta.php">Crie uma conta!</a></p>

    <!-- Formulario -->
    <form action="FazerLogin.php" method="POST">
        <div id="login">
            <label for="email">Email: </label>
            <input type="email" name="email" placeholder="Digite seu e-mail" class="forms" required>
            <br><br>
            <label for="senha">Senha:</label>
            <input id="senha" type="password" name="senha" placeholder="Digite sua senha" class="forms" required>
            <br><br>
            <a href="/">Esqueci minha senha!</a>
        </div>

        <!-- Botão para entrar -->
        <button type="submit" id="btn-entrar">Entrar</button>
    </form>



    </main>

</body>

</html>