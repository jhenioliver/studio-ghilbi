-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/11/2024 às 00:57
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
-- Banco de dados: `studioghilbi`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `filmes`
--

CREATE TABLE `filmes` (
  `id_filme` int(11) NOT NULL,
  `titulo` varchar(60) DEFAULT NULL,
  `titulo_original` varchar(60) DEFAULT NULL,
  `descricao` varchar(250) DEFAULT NULL,
  `diretor` varchar(50) DEFAULT NULL,
  `ano_lancamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `filmes`
--

INSERT INTO `filmes` (`id_filme`, `titulo`, `titulo_original`, `descricao`, `diretor`, `ano_lancamento`) VALUES
(243, 'Castle in the Sky', '天空の城ラピュタ', 'The orphan Sheeta inherited a mysterious crystal that links her to the mythical sky-kingdom of Laputa. With the help of resourceful Pazu and a rollicking band of sky pirates, she makes her way to the ruins of the once-great civilization. Sheeta and P', 'Hayao Miyazaki', 1986),
(244, 'Grave of the Fireflies', '火垂るの墓', 'In the latter part of World War II, a boy and his sister, orphaned when their mother is killed in the firebombing of Tokyo, are left to survive on their own in what remains of civilian life in Japan. The plot follows this boy and his sister as they d', 'Isao Takahata', 1988),
(245, 'My Neighbor Totoro', 'となりのトトロ', 'Two sisters move to the country with their father in order to be closer to their hospitalized mother, and discover the surrounding trees are inhabited by Totoros, magical spirits of the forest. When the youngest runs away from home, the older sister ', 'Hayao Miyazaki', 1988),
(246, 'Kiki\'s Delivery Service', '魔女の宅急便', 'A young witch, on her mandatory year of independent life, finds fitting into a new community difficult while she supports herself by running an air courier service.', 'Hayao Miyazaki', 1989),
(247, 'Only Yesterday', 'おもひでぽろぽろ', 'It’s 1982, and Taeko is 27 years old, unmarried, and has lived her whole life in Tokyo. She decides to visit her family in the countryside, and as the train travels through the night, memories flood back of her younger years: the first immature stirr', 'Isao Takahata', 1991),
(248, 'Porco Rosso', '紅の豚', 'Porco Rosso, known in Japan as Crimson Pig (Kurenai no Buta) is the sixth animated film by Hayao Miyazaki and released in 1992. You\'re introduced to an Italian World War I fighter ace, now living as a freelance bounty hunter chasing \'air pirates\' in ', 'Hayao Miyazaki', 1992),
(249, 'Pom Poko', '平成狸合戦ぽんぽこ', 'As the human city development encroaches on the raccoon population\'s forest and meadow habitat, the raccoons find themselves faced with the very real possibility of extinction. In response, the raccoons engage in a desperate struggle to stop the cons', 'Isao Takahata', 1994),
(250, 'Whisper of the Heart', '耳をすませば', 'Shizuku lives a simple life, dominated by her love for stories and writing. One day she notices that all the library books she has have been previously checked out by the same person: \'Seiji Amasawa\'. Curious as to who he is, Shizuku meets a boy her ', 'Yoshifumi Kondō', 1995),
(251, 'Princess Mononoke', 'もののけ姫', 'Ashitaka, a prince of the disappearing Ainu tribe, is cursed by a demonized boar god and must journey to the west to find a cure. Along the way, he encounters San, a young human woman fighting to protect the forest, and Lady Eboshi, who is trying to ', 'Hayao Miyazaki', 1997),
(252, 'My Neighbors the Yamadas', 'ホーホケキョ となりの山田くん', 'The Yamadas are a typical middle class Japanese family in urban Tokyo and this film shows us a variety of episodes of their lives. With tales that range from the humourous to the heartbreaking, we see this family cope with life\'s little conflicts, pr', 'Isao Takahata', 1999),
(253, 'Spirited Away', '千と千尋の神隠し', 'Spirited Away is an Oscar winning Japanese animated film about a ten year old girl who wanders away from her parents along a path that leads to a world ruled by strange and unusual monster-like animals. Her parents have been changed into pigs along w', 'Hayao Miyazaki', 2001),
(254, 'The Cat Returns', '猫の恩返し', 'Haru, a schoolgirl bored by her ordinary routine, saves the life of an unusual cat and suddenly her world is transformed beyond anything she ever imagined. The Cat King rewards her good deed with a flurry of presents, including a very shocking propos', 'Hiroyuki Morita', 2002),
(255, 'Howl\'s Moving Castle', 'ハウルの動く城', 'When Sophie, a shy young woman, is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions in his legged, walking home.', 'Hayao Miyazaki', 2004),
(256, 'Tales from Earthsea', 'ゲド戦記', 'Something bizarre has come over the land. The kingdom is deteriorating. People are beginning to act strange... What\'s even more strange is that people are beginning to see dragons, which shouldn\'t enter the world of humans. Due to all these bizarre e', 'Gorō Miyazaki', 2006),
(257, 'Ponyo', '崖の上のポニョ', 'The son of a sailor, 5-year old Sosuke lives a quiet life on an oceanside cliff with his mother Lisa. One fateful day, he finds a beautiful goldfish trapped in a bottle on the beach and upon rescuing her, names her Ponyo. But she is no ordinary goldf', 'Hayao Miyazaki', 2008),
(258, 'Arrietty', '借りぐらしのアリエッティ', '14-year-old Arrietty and the rest of the Clock family live in peaceful anonymity as they make their own home from items \'borrowed\' from the house\'s human inhabitants. However, life changes for the Clocks when a human boy discovers Arrietty.', 'Hiromasa Yonebayashi', 2010),
(259, 'From Up on Poppy Hill', 'コクリコ坂から', 'The story is set in 1963 in Yokohama. Kokuriko Manor sits on a hill overlooking the harbour. A 16 year-old girl, Umi, lives in that house. Every morning she raises a signal flag facing the sea. The flag means “I pray for safe voyages”. A 17 year-old ', 'Gorō Miyazaki', 2011),
(260, 'The Wind Rises', '風立ちぬ', 'A lifelong love of flight inspires Japanese aviation engineer Jiro Horikoshi, whose storied career includes the creation of the A-6M World War II fighter plane.', 'Hayao Miyazaki', 2013),
(261, 'The Tale of the Princess Kaguya', 'かぐや姫の物語', 'A bamboo cutter named Sanuki no Miyatsuko discovers a miniature girl inside a glowing bamboo shoot. Believing her to be a divine presence, he and his wife decide to raise her as their own, calling her \'Princess\'.', 'Isao Takahata', 2013),
(262, 'When Marnie Was There', '思い出のマーニー', 'The film follows Anna Sasaki living with her relatives in the seaside town. Anna comes across a nearby abandoned mansion, where she meets Marnie, a mysterious girl who asks her to promise to keep their secrets from everyone. As the summer progresses,', 'Hiromasa Yonebayashi', 2014),
(263, 'The Red Turtle', 'レッドタートル ある島の物語', 'A man set adrift by a storm wakes up on a beach. He discovers that he is on a deserted island with plenty of fresh water, fruit and a dense bamboo forest. He builds a raft from bamboo and attempts to sail away, but his raft is destroyed by an unseen ', 'Michaël Dudok de Wit', 2016),
(264, 'Earwig and the Witch', 'アーヤと魔女', 'An orphan girl, Earwig, is adopted by a witch and comes home to a spooky house filled with mystery and magic.', 'Gorō Miyazaki', 2021);

-- --------------------------------------------------------

--
-- Estrutura para tabela `logs`
--

CREATE TABLE `logs` (
  `idlog` int(11) NOT NULL,
  `datahora` timestamp NOT NULL DEFAULT current_timestamp(),
  `numeroregistros` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `logs`
--

INSERT INTO `logs` (`idlog`, `datahora`, `numeroregistros`) VALUES
(1, '2024-11-27 23:27:42', 22),
(2, '2024-11-27 23:31:13', 22),
(3, '2024-11-27 23:55:06', 22),
(4, '2024-11-27 23:55:44', 22),
(5, '2024-11-27 23:56:07', 22);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id_filme`);

--
-- Índices de tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`idlog`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id_filme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `idlog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
