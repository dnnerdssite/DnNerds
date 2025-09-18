-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/09/2025 às 15:25
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dnnerds`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticias`
--

CREATE DATABASE dnnerds;
use dnnerds;

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(60) NOT NULL,
  `texto` text NOT NULL,
  `imagem` text DEFAULT NULL,
  `palavrachave` varchar(20) DEFAULT NULL,
  `video` text DEFAULT NULL,
  `data_publicacao` date NOT NULL,
  `categoria` enum('Animes','Jogos','Livros','RPG','Series/Filmes','Tecnologia') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `texto`, `imagem`, `palavrachave`, `video`, `data_publicacao`, `categoria`) VALUES
(2, 'Stardew Valley | celebra marca de 41 milhões de cópias vendi', '<p>Stardew Valley comemora 41 milhões de cópias vendidas.</p>', '../Imagens/stardewvalley.jpg', 'stardewvalley', '', '2025-09-16', 'Jogos'),
(3, 'Naruto | Criador de Naruto quer começar novo mangá', '<p>O mangaká <strong>Masashi Kishimoto</strong> é mundialmente conhecido por ter escrito um dos mais bem-sucedidos mangás da história: <em>Naruto</em>. Agora, Kishimoto revela que quer começar um novo projeto.</p>\r\n\r\n    <p>\r\n      “É uma questão difícil. Eu tenho um objetivo, mas para mim o mais importante é ter tempo com a minha família”, disse Kishimoto em entrevista. “Eu amo os momentos com os fãs, eu quero ter mais. Eu acho que nesses momentos eu encontro motivação e vontade para começar um novo trabalho”, completou.\r\n    </p>\r\n\r\n    <p>Publicado de 1999 a 2014 no Japão, <em>Naruto</em> conta a história de um mundo povoado por ninjas no qual o protagonista homônimo tem dentro de si a temida e poderosa Fera de Nove Caudas, responsável pela destruição do local onde vive, a Vila Oculta da Folha, no passado.</p>\r\n\r\n    <p>O mangá então foi adaptado para um anime entre 2002 e 2007, com continuações na forma de <em>Naruto Shippuden</em> entre 2007 e 2017, e <em>Boruto</em>, iniciado em 2017 e no ar até hoje.</p>\r\n\r\n    <p>Ambas as séries de <em>Naruto</em> estão disponíveis no catálogo da Netflix e Crunchyroll, assim como a sequência <em>Boruto: Naruto Next Generations</em>.</p>\r\n', '../Imagens/naruto.png', 'naruto', '', '2025-09-16', 'Animes'),
(4, 'Round 6 | Temporada 2 é impressionante', '<p>Round 6 retorna com uma temporada 2 impressionante.</p>', '../Imagens/round6.jpg', 'round6', '', '2025-09-16', 'Series/Filmes'),
(5, 'The Batman 2 | Filme tem lançamento adiado em um ano', '<p>The Batman 2 teve seu lançamento adiado em um ano.</p>', '../Imagens/batman.jpg', 'batman', '', '2025-09-16', 'Series/Filmes'),
(6, 'Marvel Rivals | Deadpool e outros personagens chegam em brev', '<p>Marvel Rivals adiciona Deadpool e novos personagens em breve.</p>', '../Imagens/marvelrivals.webp', 'marvelrivals', '', '2025-09-16', 'Jogos'),
(7, 'Astro Bot | Ganha o prêmio GOTY e gera polêmica', '<p>Astro Bot vence o prêmio GOTY, gerando polêmica.</p>', '../Imagens/astrobot.jpeg', 'astrobot', '', '2025-09-16', 'Jogos'),
(8, 'Arcane | Deu prejuízo para a Riot Games e não trouxe fãs pra', '<p>Arcane causou prejuízo para a Riot Games e não trouxe novos fãs para LOL.</p>', '../Imagens/arcane.jpeg', 'arcane', '', '2025-09-16', 'Jogos'),
(9, 'SEGA | Pode lançar assinaturas de games', '<p>A SEGA estuda lançar um sistema de assinaturas de games.</p>', '../Imagens/sega.png', 'sega', '', '2025-09-16', 'Jogos'),
(10, 'RPG: editora de Porto Alegre comemora 25 anos do universo To', '<p>RPG Tormenta comemora 25 anos com dois novos livros.</p>', '../Imagens/Tormenta1.webp', 'tormenta', '', '2025-09-16', 'RPG'),
(11, 'Finalmente abriram-se as portas do Império de Jade', '<p>O Império de Jade finalmente abriu suas portas para os jogadores.</p>', '../Imagens/ImperiodeJade.jpeg', 'imperiodejade', '', '2025-09-16', 'RPG'),
(12, 'Mesas de RPG rolando agora que você PRECISA conhecer!', '<p>Mesas de RPG em atividade que você precisa conhecer.</p>', '../Imagens/ass_bgm5.960.webp', 'mesasrpg', '', '2025-09-16', 'RPG'),
(13, 'RPG de mesa de Assassin’s Creed chega ao Brasil em pré-venda', '<p>RPG de mesa de Assassin’s Creed chega ao Brasil em pré-venda.</p>', '../Imagens/assassins.jpeg', 'assassinscreed', '', '2025-09-16', 'RPG'),
(15, 'Rússia reconhece que seus videogames não poderão competir co', '<p>Rússia admite que seus videogames não competem com PS5 e Xbox Series.</p>', '../Imagens/641065.webp', 'russia_games', '', '2025-09-16', 'Tecnologia'),
(16, 'Intel lança o “melhor processador x86 de todos os tempos”', '<p>Intel anuncia lançamento do melhor processador x86 de todos os tempos.</p>', '../Imagens/Lunar-Lake-Intel.jpg.webp', 'intel', '', '2025-09-16', 'Tecnologia'),
(17, 'Data de lançamento do Nintendo Switch 2 pode ter sido revela', '<p>Suposta data de lançamento do Nintendo Switch 2 é revelada.</p>', '../Imagens/nintendo.jpeg', 'nintendo', '', '2025-09-16', 'Tecnologia'),
(18, 'Sony consertou suposta falha polêmica do PS5 no PS5 Pro', '<p>Sony corrige falha polêmica do PS5 no modelo Pro.</p>', '../Imagens/ps5.jpeg', 'ps5', '', '2025-09-16', 'Tecnologia'),
(19, 'PS6 deve seguir o “ciclo natural” das gerações de consoles', '<p>O PS6 seguirá o ciclo natural das gerações de consoles.</p>', '../Imagens/PS6-PlayStation-6-900x503.jpg.webp', 'ps6', '', '2025-09-16', 'Tecnologia'),
(20, 'Dragon Ball Daima | Super Saiyajin 3 de Vegeta é diferente d', '<p>Super Saiyajin 3 de Vegeta é diferente do de Goku em Dragon Ball Daima.</p>', '../Imagens/vegete.jpeg', 'dragonball', '', '2025-09-16', 'Animes'),
(21, 'Pirataria | Japão derruba mais de 15 sites piratas de Anime ', '<p>Japão derruba mais de 15 sites piratas de anime no Brasil.</p>', '../Imagens/pirataria.jpeg', 'pirataria', '', '2025-09-16', 'Animes'),
(22, 'Dandadan | Vencedor do prêmio de Anime do Ano no Golden Issu', '<p>Dandadan é vencedor do prêmio de Anime do Ano no Golden Issue Awards.</p>', '../Imagens/dandadan.jpeg', 'dandadan', '', '2025-09-16', 'Animes'),
(23, 'One Piece | Nico Robin volta com seu antigo visual icônico', '<p>Nico Robin retorna com seu visual icônico em One Piece.</p>', '../Imagens/Robin.jpeg', 'onepiece', '', '2025-09-16', 'Animes'),
(24, 'Naruto | Criador de Naruto quer começar novo mangá', '<p>O criador de Naruto planeja iniciar um novo mangá.</p>', '../Imagens/naruto.png', 'naruto2', '', '2025-09-16', 'Animes'),
(25, 'Veja 5 livros internacionais lançados em 2024 para ler em 20', '<p>Seleção de 5 livros internacionais lançados em 2024 para ler em 2025.</p>', '../Imagens/livros.jpg', 'livrosinternacionais', '', '2025-09-16', 'Livros'),
(26, 'Os 12 melhores livros para iniciantes na leitura', '<p>Confira os 12 melhores livros para iniciantes na leitura.</p>', '../Imagens/livros-para-iniciantes-1024x683.jpg', 'livrosiniciante', '', '2025-09-16', 'Livros'),
(27, 'Veja 10 livros nacionais lançados em 2024 que valem a leitur', '<p>10 livros nacionais lançados em 2024 que valem a pena conferir.</p>', '../Imagens/livros-2.jpeg', 'livrosnacionais', '', '2025-09-16', 'Livros'),
(28, '20 leituras de verão por até R$20: veja seleção de livros fí', '<p>Seleção de 20 leituras de verão por até R$20.</p>', '../Imagens/livros.webp', 'livrosverao', '', '2025-09-16', 'Livros'),
(29, 'A nova tendência editorial: livros que você pode realmente j', '<p>Livros que você pode realmente julgar pela capa são tendência editorial.</p>', '../Imagens/books-deluxe-editions-5.avif', 'livroscapa', '', '2025-09-16', 'Livros'),
(30, 'Max | As 10 melhores séries da Max em 2024', '<p>Confira as 10 melhores séries da Max em 2024.</p>', '../Imagens/max.jpeg', 'max', '', '2025-09-16', 'Series/Filmes'),
(31, 'Cobra Kai | Parte 3 ganha seu primeiro teaser', '<p>Cobra Kai Parte 3 ganha seu primeiro teaser.</p>', '../Imagens/cobrakai.jpeg', 'cobrakai', '', '2025-09-16', 'Series/Filmes'),
(32, 'Senna | é uma superprodução com o tempero brasileiro, assim ', '<p>Filme Senna é uma superprodução brasileira, assim como Ayrton.</p>', '../Imagens/senna.jpeg', 'senna', '', '2025-09-16', 'Series/Filmes'),
(33, 'Homem Aranha | Marvel revela trailer da série animada Seu Am', '<p>Marvel revela trailer da série animada Seu Amigão da Vizinhança Homem-Aranha.</p>', '../Imagens/homemaranha.jpeg', 'homemaranha', '', '2025-09-16', 'Series/Filmes'),
(36, 'Ratnilps é considerado autista', '<p>DINOSSAURO UAAAAAAAAAAAAAR</p>', '../Imagens/superman.jpg', 'RATNILPS', '', '2025-09-16', 'RPG'),
(50, 'The Witcher 3 | recebe atualização de desempenho', '<p>A CD Projekt lançou uma atualização para melhorar gráficos e estabilidade em The Witcher 3.</p>', '../Imagens/witcher3.jpg', 'witcher3update', '', '2025-09-17', 'Jogos'),
(51, 'Elden Ring | DLC Shadow of the Erdtree é sucesso', '<p>A expansão de Elden Ring atinge vendas recorde no primeiro mês.</p>', '../Imagens/eldenringdlc.jpg', 'eldenringdlc', '', '2025-09-17', 'Jogos'),
(52, 'League of Legends | novo campeão anunciado', '<p>A Riot Games revela novo campeão que chega na próxima temporada de LoL.</p>', '../Imagens/lolnovo.jpg', 'leagueoflegendsnovoc', '', '2025-09-17', 'Jogos'),
(53, 'GTA VI | trailer oficial bate recorde de views', '<p>O trailer de GTA VI se torna o mais assistido da história dos games.</p>', '../Imagens/gtavi.jpg', 'gtavi', '', '2025-09-17', 'Jogos'),
(54, 'Dungeons & Dragons | nova edição anunciada', '<p>A Wizards of the Coast revela detalhes da próxima edição do D&D.</p>', '../Imagens/dnd.jpg', 'dndnovaedicao', '', '2025-09-17', 'RPG'),
(55, 'Pathfinder | expansão adiciona novos cenários', '<p>Pathfinder recebe suplemento com regiões inéditas para campanhas.</p>', '../Imagens/pathfinder.jpg', 'pathfinderexpansao', '', '2025-09-17', 'RPG'),
(56, 'Tormenta20 | lançamento de novo bestiário', '<p>O sistema brasileiro ganha um livro dedicado a monstros e criaturas.</p>', '../Imagens/tormenta20.jpg', 'tormentabestiario', '', '2025-09-17', 'RPG'),
(57, 'Critical Role | parceria com Amazon Prime', '<p>A série de RPG de mesa terá adaptação animada exclusiva no Prime Video.</p>', '../Imagens/criticalrole.jpg', 'criticalrole', '', '2025-09-17', 'RPG'),
(58, 'Call of Cthulhu | livro traduzido para português', '<p>O clássico RPG de horror finalmente chega em edição nacional.</p>', '../Imagens/cthulhu.jpg', 'callofcthulhu', '', '2025-09-17', 'RPG'),
(59, 'Apple | lança novo iPhone com IA integrada', '<p>O novo iPhone chega com recursos avançados de inteligência artificial.</p>', '../Imagens/iphone.jpg', 'iphoneia', '', '2025-09-17', 'Tecnologia'),
(60, 'Google | anuncia Android 15', '<p>A nova versão do Android traz melhorias em privacidade e desempenho.</p>', '../Imagens/android15.jpg', 'android15', '', '2025-09-17', 'Tecnologia'),
(61, 'Tesla | revela novo modelo elétrico acessível', '<p>A Tesla apresenta carro elétrico mais barato da sua linha.</p>', '../Imagens/tesla.jpg', 'teslamodelo', '', '2025-09-17', 'Tecnologia'),
(62, 'Microsoft | Copilot chega ao Windows', '<p>A Microsoft integra IA generativa nativamente no Windows.</p>', '../Imagens/windowscopilot.jpg', 'windowscopilot', '', '2025-09-17', 'Tecnologia'),
(63, 'Meta | anuncia novo headset de realidade virtual', '<p>O Meta Quest evolui com maior imersão e gráficos avançados.</p>', '../Imagens/metaquest.jpg', 'metaquest', '', '2025-09-17', 'Tecnologia'),
(64, 'One Piece | episódio 1100 quebra recordes', '<p>O anime ultrapassa marcas históricas de audiência.</p>', '../Imagens/onepiece.jpg', 'onepiece1100', '', '2025-09-17', 'Animes'),
(65, 'Naruto | ganha remake em alta definição', '<p>A série clássica retorna com nova qualidade gráfica.</p>', '../Imagens/naruto.jpg', 'narutoremake', '', '2025-09-17', 'Animes'),
(66, 'Attack on Titan | último episódio lançado', '<p>A jornada de Eren chega ao fim em emocionante conclusão.</p>', '../Imagens/aot.jpg', 'aotfinal', '', '2025-09-17', 'Animes'),
(67, 'Dragon Ball Super | novo arco confirmado', '<p>Goku e Vegeta retornam em uma nova saga cheia de ação.</p>', '../Imagens/dbsuper.jpg', 'dbsupernovoarco', '', '2025-09-17', 'Animes'),
(68, 'Kimetsu no Yaiba | próxima temporada anunciada', '<p>A Ufotable confirma continuação do anime para 2025.</p>', '../Imagens/kimetsu.jpg', 'kimetsutemp2025', '', '2025-09-17', 'Animes'),
(69, 'Senhor dos Anéis | edição ilustrada lançada', '<p>Nova edição traz ilustrações inéditas de artistas renomados.</p>', '../Imagens/sda.jpg', 'sdaedicao', '', '2025-09-17', 'Livros'),
(70, 'Harry Potter | box comemorativo anunciado', '<p>Edição especial de 30 anos será lançada com extras exclusivos.</p>', '../Imagens/hp.jpg', 'harrypotterbox', '', '2025-09-17', 'Livros'),
(71, 'Sandman | nova coletânea de histórias curtas', '<p>Neil Gaiman lança novos contos dentro do universo Sandman.</p>', '../Imagens/sandman.jpg', 'sandmancoletanea', '', '2025-09-17', 'Livros'),
(72, 'Game of Thrones | livro derivado chega em breve', '<p>George R. R. Martin revela spin-off literário de Westeros.</p>', '../Imagens/got.jpg', 'gotlivro', '', '2025-09-17', 'Livros'),
(73, 'Percy Jackson | livro inédito anunciado', '<p>Rick Riordan retorna ao universo de Percy Jackson com nova aventura.</p>', '../Imagens/percy.jpg', 'percyjacksonnovo', '', '2025-09-17', 'Livros'),
(74, 'Marvel | anuncia Vingadores: Guerras Secretas', '<p>O próximo grande filme do MCU é confirmado oficialmente.</p>', '../Imagens/vingadores.jpg', 'vingadoresguerras', '', '2025-09-17', 'Series/Filmes'),
(75, 'Stranger Things | última temporada em produção', '<p>As gravações da quinta temporada já estão em andamento.</p>', '../Imagens/strangerthings.jpg', 'strangerthingsfinal', '', '2025-09-17', 'Series/Filmes'),
(76, 'The Batman 2 | data de lançamento revelada', '<p>Robert Pattinson retorna como Batman em 2026.</p>', '../Imagens/batman2.jpg', 'thebatman2', '', '2025-09-17', 'Series/Filmes'),
(77, 'The Boys | quinta temporada confirmada', '<p>Amazon Prime confirma a continuidade da série de super-heróis.</p>', '../Imagens/theboys.jpg', 'theboys5temp', '', '2025-09-17', 'Series/Filmes'),
(78, 'O Senhor dos Anéis: Os Anéis de Poder | nova temporada', '<p>A série da Amazon retorna com mais batalhas épicas em 2025.</p>', '../Imagens/aneisdepoder.jpg', 'aneisdepoder', '', '2025-09-17', 'Series/Filmes');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `senha` text NOT NULL,
  `dark` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `dark`) VALUES
(1, '', '', '', 0),
(2, 'Renato Matos', 'renato@gmail.com', '123', 0),
(3, 'Renato Matos', 'renato@gmail.com', '123', 0),
(4, 'Renato Matos', 'renato@gmail.com', '123', 0),
(5, 'Renato Matos', 'renato@gmail.com', '123', 0),
(6, 'Renato Matos', 'renato@gmail.com', '123', 0),
(7, 'Renato Matos', 'renato@gmail.com', '123', 0),
(8, 'Renato Matos', 'renato@gmail.com', '123', 0),
(9, 'Renato Matos', 'renato@gmail.com', '123', 0),
(10, 'Renato Matos', 'renato@gmail.com', '123', 0),
(11, 'Renato Matos', 'renato.matosoliv@gmail.com', '123', 0),
(12, 'Renato Matos', 'renato.matosoliv@gmail.com', '123', 0),
(13, 'Renato Matos', 'renato.matosoliv@gmail.com', '123', 0),
(14, 'Renato Matos', 'renato.matosoliv@gmail.com', '123', 0),
(15, 'Teste', 'teste@gmail.com', '1234', 0),
(16, 'Cao', 'cao@gmail.com', '123', 0),
(17, 'Ivaldo', 'iva@gmail.com', '123', 0),
(18, 'Ivaldo', 'iva@gmail.com', '123', 0),
(19, 'Ivaldo', 'iva@gmail.com', '123', 0),
(20, 'Ivaldo', 'iva@gmail.com', '123', 0),
(21, 'Ivaldo', 'iva@gmail.com', '123', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `palavrachave` (`palavrachave`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
