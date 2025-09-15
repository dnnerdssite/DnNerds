<?php
include_once('config.php');

if (isset($_POST['nome']) && isset($_POST['email']) && isset($_POST['senha'])) {
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $senha = $_POST['senha'];

    // Executa o insert e mostra erro se falhar
    $sql = "INSERT INTO usuarios (nome, email, senha) VALUES ('$nome', '$email', '$senha')";
    if (mysqli_query($conexao, $sql)) {
        echo "✅ Usuário cadastrado com sucesso!";
    } else {
        echo "❌ Erro: " . mysqli_error($conexao);
    }
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DnNerds - Criação de conta</title>
    <link rel="stylesheet" href="../Styles/Header-L.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Anonymous+Pro:ital,wght@0,400;0,700;1,400;1,700&family=Caveat&family=Open+Sans:ital,wght@0,400;0,600;0,700;0,800;1,400&family=Poppins:wght@300;600;800&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Anonymous+Pro&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../Styles/CriarConta-L.css">


</head>

<body>

    <header>
        <!--Navegar-->
        <nav class="navbar">
            <h2>DnNerds <img src="../Imagens/favicon.png" alt=""></h2>

            <ul>


                <li>
                    <!--Notícias-->
                    <a class="selecao" href="../HTML/Noticias.html">Notícias</a>
                </li>
                <li>
                    <!--Tier List-->
                    <a class="selecao" href="">NerdList</a>
                </li>
                <li>
                    <!--Quizzes-->
                    <a class="selecao" href="">Quizzes</a>
                </li>
                <li>
                    <!--Copinha-->
                    <a class="selecao" href="">IA</a>
                </li>

            </ul>



            <div class="search-container">
                <img id="lupa" src="../Imagens/lupa_FundoPreto.png" alt="Lupa">
                <input type="search" name="search" id="search" placeholder="Buscar...">
            </div>


            <!-- Botão de fazer login -->
            <button class="btn-navbar"><a class="selecao" href="../HTML/FazerLogin.php">Fazer Login</a></button>
        </nav>

    </header>
    <main class="container">

        <!-- Título -->
        <h1>Criar Conta!</h1>


        <!-- Formulário -->
        <form action="CriarConta.php" method="POST">
            <div id="login">
                <div class="form-group">
                    <label for="nome">Nome:</label>
                    <input type="text" name="nome" placeholder="Digite seu nome" class="forms" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" name="email" placeholder="Digite seu e-mail" class="forms" required>
                </div>
                <div class="form-group">
                    <label for="senha">Senha:</label>
                    <input id="senha" type="password" name="senha" placeholder="Digite sua senha" class="forms"
                        required>
                </div>
                <div class="form-group">
                    <label for="confirme-senha">Confirme Senha:</label>
                    <input id="confirme-senha" type="password" name="confirm-password" placeholder="Confirme sua senha"
                        class="forms" required>
                </div>
                <div class="form-button">
                    <button type="submit" id="btn-entrar">Criar Conta</button>
                </div>
            </div>
        </form>





    </main>

</body>

</html>