<?php
include_once('config.php');

// Define as categorias que você quer exibir
$categorias = [
    'Recente' => 'Notícias Recentes',
    'Jogos' => 'Notícias dos Games',
    'RPG' => 'Notícias de RPG',
    'Tecnologia' => 'Notícias de Tecnologia',
    'Animes' => 'Notícias dos Animes',
    'Livros' => 'Notícias de Livros',
    'Series/Filmes' => 'Notícias de Séries/Filmes'
];
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DnNerds</title>
    <link rel="stylesheet" href="../Styles/Header.css?v=15">
    <link rel="stylesheet" href="../Styles/Noticias.css?v=15">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Anonymous+Pro:ital,wght@0,400;0,700;1,400;1,700&family=Caveat&family=Open+Sans:ital,wght@0,400;0,600;0,700;0,800;1,400&family=Poppins:wght@300;600;800&display=swap"
        rel="stylesheet">
</head>

<body>
    <header>
        <nav class="navbar">
            <h2 class="title">DnNerds <img src="../Imagens/favicon.png" alt=""></h2>
            <ul>
                <li><a href="../HTML/Noticias.php">Notícias</a></li>
                <li><a href="">NerdList</a></li>
                <li><a href="">Quizzes</a></li>
                <li><a href="">IA</a></li>
            </ul>
            <div class="search-container">
                <img id="lupa" src="../Imagens/lupa_FundoPreto.png" alt="Lupa">
                <input type="search" name="search" id="search" placeholder="Buscar...">
            </div>
            <button class="btn-navbar"><a href="../HTML/FazerLogin.php">Fazer Login</a></button>
        </nav>
    </header>

    <main>
        <h1>Notícias</h1>

        <div id="noticias">
            <?php
            foreach ($categorias as $categoriaKey => $categoriaTitulo) {
                echo '<div class="classe">';
                echo '<h2>' . $categoriaTitulo . '</h2>';
                echo '</div>';

                // Seleciona notícias da categoria
                if ($categoriaKey == 'Recente') {
                    $sql = "SELECT * FROM noticias ORDER BY data_publicacao DESC LIMIT 25";
                } else {
                    $sql = "SELECT * FROM noticias WHERE categoria='$categoriaKey' ORDER BY data_publicacao DESC LIMIT 15";
                }


                $result = $conexao->query($sql);

                echo '<div class="carousel-container">';
                echo '<button class="carousel-btn left" type="button">&#10094;</button>';
                echo '<div class="carousel">'; // não precisa mais da classe flex aqui, vamos aplicar o estilo na .carousel
                if ($result && $result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        echo '<a href="./Noticias/' . $row['palavrachave'] . '.php">
                <div id="caixa">
                    <img src="' . $row['imagem'] . '" alt="">
                    <p>' . $row['titulo'] . '</p>
                </div>
              </a>';
                    }
                } else {
                    echo '<p>Nenhuma notícia encontrada nesta categoria.</p>';
                }
                echo '</div>';
                echo '<button class="carousel-btn right" type="button">&#10095;</button>';
                echo '</div>';

            }

            ?>
        </div>
    </main>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            document.querySelectorAll(".carousel-container").forEach(container => {
                const carousel = container.querySelector(".carousel");
                const btnLeft = container.querySelector(".carousel-btn.left");
                const btnRight = container.querySelector(".carousel-btn.right");

                btnLeft.addEventListener("click", () => {
                    carousel.scrollBy({ left: -250, behavior: "smooth" });
                });

                btnRight.addEventListener("click", () => {
                    carousel.scrollBy({ left: 250, behavior: "smooth" });
                });
            });
        });
    </script>

</body>

</html>