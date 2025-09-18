<?php
include_once('../config.php');

// Buscar a notícia com palavrachave = 'naruto'
$sql = "SELECT * FROM noticias WHERE palavrachave = 'naruto' LIMIT 1";
$result = $conexao->query($sql);

if ($result && $result->num_rows > 0) {
    $noticia = $result->fetch_assoc();
} else {
    echo "Notícia não encontrada.";
    exit;
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $noticia['titulo']; ?> - DnNerds</title>
    <link rel="stylesheet" href="../../Styles/Header.css?v=12">
    <link rel="stylesheet" href="../../Styles/Noticia.css?v=8">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Anonymous+Pro:ital,wght@0,400;0,700;1,400;1,700&family=Caveat&family=Open+Sans:ital,wght@0,400;0,600;0,700;0,800;1,400&family=Poppins:wght@300;600;800&display=swap"
        rel="stylesheet">
</head>
<body>
    <!-- Header igual ao noticias.php -->
    <header>
        <nav class="navbar">
            <h2 class="title">DnNerds <img src="../../Imagens/favicon.png" alt=""></h2>
            <ul>
                <li><a href="../Noticias.php">Notícias</a></li>
                <li><a href="">NerdList</a></li>
                <li><a href="">Quizzes</a></li>
                <li><a href="">IA</a></li>
            </ul>
            <div class="search-container">
                <img id="lupa" src="../../Imagens/lupa_FundoPreto.png" alt="Lupa">
                <input type="search" name="search" id="search" placeholder="Buscar...">
            </div>
            <button class="btn-navbar"><a href="../HTML/FazerLogin.php">Fazer Login</a></button>
        </nav>
    </header>

    <!-- Conteúdo da notícia -->
    <main>
        <article class="noticia-detalhe">
            <h1><?php echo $noticia['titulo']; ?></h1>
            <img src="../<?php echo $noticia['imagem']; ?>" alt="<?php echo $noticia['titulo']; ?>">
            <p><?php echo nl2br($noticia['texto']); ?></p>
            <small>Publicado em: <?php echo date("d/m/Y", strtotime($noticia['data_publicacao'])); ?></small>
        </article>
    </main>
</body>
</html>
