-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Ago-2024 às 20:15
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `iwood_dsii2024/1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `created_at`, `updated_at`) VALUES
(1, 'Marcenaria', '2024-08-30 20:23:56', '2024-08-30 20:23:56'),
(2, 'Carpintaria', '2024-08-30 20:23:56', '2024-08-30 20:23:56'),
(3, 'Freelancer', '2024-08-30 20:23:56', '2024-08-30 20:23:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estabelecimentos`
--

CREATE TABLE `estabelecimentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categoria_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `estabelecimentos`
--

INSERT INTO `estabelecimentos` (`id`, `nome`, `descricao`, `imagem`, `telefone`, `created_at`, `updated_at`, `categoria_id`) VALUES
(1, 'Carpintaria Artesanal', 'Na Madeira & Arte, combinamos habilidades artesanais com tecnologia moderna para criar móveis de alta qualidade que refletem elegância e sofisticação. Nosso compromisso com a excelência é evidente em cada detalhe, desde o design até a finalização.', 'https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia12725/o-que-faz-um-marceneiro-cpt.jpg', '+55 49 99999-9999', '2024-03-17 21:26:07', '2024-03-17 21:29:38', 2),
(2, 'Madeira & Arte Marcenaria', 'Na busca pela sustentabilidade, a Oficina da Madeira utiliza apenas madeira proveniente de fontes responsáveis ​​e práticas eco-friendly em todo o processo de produção. Nosso foco é criar móveis duráveis, belos e que respeitem o meio ambiente.', 'https://artedamarcenariamoderna.com.br/wp-content/uploads/2017/07/profiss%C3%A3o-marceneiro.png', '+55 49 99999-8888', '2024-03-17 21:28:04', '2024-03-17 21:29:23', 1),
(3, 'Raízes Rústicas', 'Especializada em móveis rústicos feitos à mão, a Marcenaria Raízes Rústicas celebra a beleza natural da madeira. Cada peça é única e carrega consigo a história e a autenticidade do material, proporcionando um toque de rusticidade a qualquer ambiente.', 'https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia31114/o-que-um-marceneiro-faz-muita-coisa-cpt.jpg', '+55 49 88888-8888', '2024-03-17 21:28:38', '2024-03-17 21:28:38', 1),
(4, 'Oficina da Madeira', 'Na busca pela sustentabilidade, a Oficina da Madeira utiliza apenas madeira proveniente de fontes responsáveis ​​e práticas eco-friendly em todo o processo de produção. Nosso foco é criar móveis duráveis, belos e que respeitem o meio ambiente.', 'https://blog.ferimport.com.br/wp-content/uploads/2021/07/marceneiro.png', '+55 49 88888-8888', '2024-03-17 21:29:09', '2024-03-17 21:29:09', 3),
(5, 'Estilo & Elegância Carpintaria', 'Combinando design contemporâneo com técnicas tradicionais, a Estilo & Elegância cria móveis sob medida que transcendem tendências passageiras. Nossa abordagem artesanal garante qualidade excepcional e beleza duradoura em cada peça.', 'https://digital.formobile.com.br/sites/formobile.com/files/styles/article_featured_standard/public/uploads/2019/05/shutterstock_578729953.jpg?itok=di5-5pD1.png', '+55 49 81234-1234', '2024-03-18 23:48:20', '2024-03-18 23:48:20', 2),
(6, 'Marcelo Machado', 'Especialista em móveis personalizados, combina técnicas tradicionais com inovação para atender às necessidades específicas de cada cliente. Minha missão é criar móveis que não apenas atendam às expectativas, mas as superem.', 'https://artedamarcenariamoderna.com.br/wp-content/uploads/2017/07/melhores-profiss%C3%B5es-do-mercado.png', '+55 49 81234-4321', '2024-03-18 23:48:43', '2024-03-18 23:48:43', 3),
(7, 'Carpintaria Harmonia', 'Na Carpintaria Harmonia, a paixão pela madeira é evidente em cada criação. Nossos móveis são projetados para proporcionar conforto, funcionalidade e beleza em perfeita harmonia, refletindo o compromisso com a excelência em carpintaria.', 'https://jkmadeiras.com.br/wp-content/uploads/2022/11/JK-BLOG-9-1024x683.png', '+55 49 9123-5544', '2024-03-18 23:49:22', '2024-03-18 23:49:22', 2),
(8, 'Roberto Lenha', 'Especialista renomado em serviços de carpintaria e marcenaria, com vasta experiência na criação de móveis sob medida. Seus projetos exclusivos e personalizados atendem às necessidades específicas de cada cliente, proporcionando funcionalidade e beleza em cada peça.', 'https://i0.wp.com/www.guiamuriae.com.br/wp-content/uploads/2016/05/Carpinteiro-Foto-Pixabay.jpg', '+55 49 81234-9899', '2024-03-18 23:49:45', '2024-03-18 23:49:45', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_12_190724_categoria', 1),
(6, '2024_03_19_185811_create_sugestaos_table', 1),
(7, '2024_03_19_194127_tiposugestaos_table', 1),
(8, '2024_03_20_010915_add_coluna_sugestao', 1),
(9, '2024_03_20_155531_create_estabelecimentos_table', 1),
(10, '2024_03_20_185210_addcategoria_estabelecimento', 1),
(11, '2024_03_29_025047_create_servicos_table', 1),
(12, '2024_07_26_175749_create_orcamento_table', 1),
(13, '2024_08_26_014610_create_usuarios_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `orcamentos`
--

CREATE TABLE `orcamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contato` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao_projeto` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_madeira` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantidade_unidades` int(11) NOT NULL,
  `observacao` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `orcamentos`
--

INSERT INTO `orcamentos` (`id`, `nome`, `contato`, `endereco`, `descricao_projeto`, `tipo_madeira`, `quantidade_unidades`, `observacao`, `created_at`, `updated_at`) VALUES
(1, 'Brad Pitt', '+55 49 1111-1111', 'Rua Humberto Bertolo Decesaro', 'Arrumar meu roupeiro', 'Pinos', 3, 'Nada', '2024-03-18 23:49:45', '2024-03-18 23:49:45'),
(2, 'Jocelio', '+55 49 1111-1111', 'Rua Humberto Bertolo Decesaro', 'Arrumar meu roupeiro', 'Pinos', 3, 'Nada', '2024-03-18 23:49:45', '2024-03-18 23:49:45'),
(3, 'Eliobson', '+55 49 1111-1111', 'Rua Humberto Bertolo Decesaro', 'Arrumar meu roupeiro', 'Pinos', 3, 'Nada', '2024-03-18 23:49:45', '2024-03-18 23:49:45'),
(4, 'Jacobson', '+55 49 1111-1111', 'Rua Humberto Bertolo Decesaro', 'Arrumar meu roupeiro', 'Pinos', 3, 'Nada', '2024-03-18 23:49:45', '2024-03-18 23:49:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contato` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detalhamento` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor_estimado` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id`, `nome`, `contato`, `email`, `detalhamento`, `valor_estimado`, `created_at`, `updated_at`) VALUES
(1, 'Brad Pitt', '+55 49 1111-1111', 'bradpitt@gmail.com', 'Arrumar o chuveiro', '100', '2024-03-18 23:49:45', '2024-03-18 23:49:45'),
(2, 'Ashton Kutcher', '+55 49 2222-2222', 'ashtonkutcher@gmail.com', 'Construção de armários', '90', '2024-03-18 23:49:45', '2024-03-18 23:49:45'),
(3, 'Tom Cruise', '+55 49 3333-3333', 'tomcruise@gmail.com', 'Reparação de portas', '80', '2024-03-18 23:49:45', '2024-03-18 23:49:45'),
(4, 'Vin Diesel', '+55 49 4444-4444', 'vindisel@gmail.com', 'Conserto de móveis', '60', '2024-03-20 18:55:45', '2024-03-20 18:55:45'),
(5, 'Agenor de Miranda Araújo Neto', '+55 49 5555-5555', 'agenormiranda@gmail.com', 'Arrumar o chuveiro', '60', '2024-03-20 18:55:45', '2024-03-20 18:55:45'),
(6, 'Farrokh Bulsara', '+55 49 6666-6666', 'farrokhbulsara@gmail.com', 'Instalação de novos pisos de madeira', '60', '2024-03-20 18:55:45', '2024-03-20 18:55:45'),
(7, 'Paolla Oliveira', '+55 49 7777-7777', 'paollaoliveira@gmail.com', 'Reparação do deck de madeira', '60', '2024-03-20 18:55:45', '2024-03-20 18:55:45'),
(8, 'Allana', '+55 49 8888-8888', 'allanalima@gmail.com', 'Criação de esculturas', '60', '2024-03-20 18:55:45', '2024-03-20 18:55:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sugestaos`
--

CREATE TABLE `sugestaos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sugestao` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avaliacao` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tiposugestao_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sugestaos`
--

INSERT INTO `sugestaos` (`id`, `nome`, `sugestao`, `avaliacao`, `created_at`, `updated_at`, `tiposugestao_id`) VALUES
(1, 'Fábio Augusto Fagundes', 'Site Bacana.', '5', '2024-03-20 21:26:07', '2024-03-20 21:29:38', 2),
(2, 'Pedro de Oliveira', 'Eu achei o site bacana, mas seria bacana se tivessem mais profissionais', '4', '2024-03-20 21:26:07', '2024-03-20 21:29:38', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tiposugestaos`
--

CREATE TABLE `tiposugestaos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tiposugestaos`
--

INSERT INTO `tiposugestaos` (`id`, `nome`, `created_at`, `updated_at`) VALUES
(1, 'Sugestão', '2024-08-30 20:23:56', '2024-08-30 20:23:56'),
(2, 'Crítica', '2024-08-30 20:23:56', '2024-08-30 20:23:56'),
(3, 'Comentário', '2024-08-30 20:23:56', '2024-08-30 20:23:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Grupo', 'admin@admin.com', NULL, '$2y$12$zA4/fBocsmKLRNUF4qexx.34mV8k3Lvju5NVQNjJTlEzSMo1gNv22', 'Df54lcwFGH1lgIcizMyPCwmuEWnttSOzZSXD6tiAJApV8bFS3eHHjdkK9wsD', '2024-08-30 20:30:12', '2024-08-30 20:30:12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `estabelecimentos`
--
ALTER TABLE `estabelecimentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estabelecimentos_categoria_id_foreign` (`categoria_id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sugestaos`
--
ALTER TABLE `sugestaos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sugestaos_tiposugestao_id_foreign` (`tiposugestao_id`);

--
-- Índices para tabela `tiposugestaos`
--
ALTER TABLE `tiposugestaos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarios_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `estabelecimentos`
--
ALTER TABLE `estabelecimentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `sugestaos`
--
ALTER TABLE `sugestaos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tiposugestaos`
--
ALTER TABLE `tiposugestaos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estabelecimentos`
--
ALTER TABLE `estabelecimentos`
  ADD CONSTRAINT `estabelecimentos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);

--
-- Limitadores para a tabela `sugestaos`
--
ALTER TABLE `sugestaos`
  ADD CONSTRAINT `sugestaos_tiposugestao_id_foreign` FOREIGN KEY (`tiposugestao_id`) REFERENCES `tiposugestaos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
