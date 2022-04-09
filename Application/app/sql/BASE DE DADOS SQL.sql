
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- ESTADOS 
DROP TABLE IF EXISTS ptr_estadosencomendas;
CREATE TABLE IF NOT EXISTS ptr_estadosencomendas (
  idEstado int(11) NOT NULL AUTO_INCREMENT,
  estado char(20) NOT NULL,
  PRIMARY KEY (idEstado)
)


INSERT INTO ptr_estadosencomendas (idEstado, estado) VALUES
(1, 'Aguardar pagamento'),
(2, 'Erro no pagamento'),
(3, 'Pagamento aceite'),
(4, 'Em preparação'),
(5, 'Para recolha'),
(6, 'Em trânsito'),
(7, 'Cancelado'),
(8, 'Entregue'),
(9, 'Devolvido'),
(10, 'Reembolsado');


-- ESTADOS FEITOS PELO LEO!!!!! ------------
DROP TABLE IF EXISTS ptr_estadosproduto;
CREATE TABLE IF NOT EXISTS ptr_estadosproduto (
  idEstadoProduto int(11) NOT NULL AUTO_INCREMENT,
  estadoProduto char(20) NOT NULL,
  PRIMARY KEY (idEstadoProduto)
)

INSERT INTO ptr_estadosproduto (idEstadoProduto, estadoProduto) VALUES
(1, 'Disponivel em stock'),
(2, 'Sem stock'),
(3, 'Encomendado'),
(4, 'Fora de prazo'),
(5, 'Danificado'),
(6, 'Em promoção'),
(7, 'Descontinuado');


DROP TABLE IF EXISTS ptr_estadosveiculo;
CREATE TABLE IF NOT EXISTS ptr_estadosveiculo (
  idEstadoVeiculo int(11) NOT NULL AUTO_INCREMENT,
  estadoVeiculo char(20) NOT NULL,
  PRIMARY KEY (idEstadoVeiculo)
)

INSERT INTO ptr_estadosveiculo (idEstadoVeiculo, estadoVeiculo) VALUES
(1, 'Em serviço'),
(2, 'Avariado'),
(3, 'Disponivel');


DROP TABLE IF EXISTS ptr_estadosservico;
CREATE TABLE IF NOT EXISTS ptr_estadosservico (
  idEstadoServico int(11) NOT NULL AUTO_INCREMENT,
  estadoServico char(20) NOT NULL,
  PRIMARY KEY (idEstadoServico)
)

INSERT INTO ptr_estadosservico (idEstadoServico, estadoServico) VALUES
(1, 'Em transito'),
(2, 'Entregue'),
(3, 'Devolvido'),
(4, 'Pendente'),
(5, 'Para Entrega'),
(6, 'Anulado');
(6, 'Incidencia');


DROP TABLE IF EXISTS ptr_estadosutilizadorregistado;
CREATE TABLE IF NOT EXISTS ptr_estadosutilizadorregistado (
  idEstadoUtilizadorRegistado int(11) NOT NULL AUTO_INCREMENT,
  estadoUtilizadorRegistado char(20) NOT NULL,
  PRIMARY KEY (idEstadoUtilizadorRegistado)
)

INSERT INTO ptr_estadosutilizadorregistado (idEstadoUtilizadorRegistado, estadoUtilizadorRegistado) VALUES
(1, 'Inativo'),
(2, 'Ativo'),
(3, 'Bloqueado'),
(4, 'Desativado');


DROP TABLE IF EXISTS ptr_estadosArmazem;
CREATE TABLE IF NOT EXISTS ptr_estadosArmazem (
  idEstadoArmazem int(11) NOT NULL AUTO_INCREMENT,
  estadoArmazem char(20) NOT NULL,
  PRIMARY KEY (idEstadoArmazem)
)

INSERT INTO ptr_estadosArmazem (idEstadoArmazem, estadoArmazem) VALUES
(1, 'Ativo'),
(2, 'Encerrado'),
(3, 'Indisponivel');


DROP TABLE IF EXISTS ptr_estadosbasetransportador;
CREATE TABLE IF NOT EXISTS ptr_estadosbasetransportador (
  idEstadoBaseTransportador int(11) NOT NULL AUTO_INCREMENT,
  estadoBaseTransportador char(20) NOT NULL,
  PRIMARY KEY (idEstadoBaseTransportador)
)

INSERT INTO ptr_estadosbasetransportador (idEstadoBaseTransportador, estadoBaseTransportador) VALUES
(1, 'Ativo'),
(2, 'Encerrado'),
(3, 'Indisponivel');




DROP TABLE IF EXISTS ptr_district;
CREATE TABLE IF NOT EXISTS districts (
  id tinyint(2) UNSIGNED NOT NULL,
  name varchar(30) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY uk_districts_name (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO ptr_district (id, name) VALUES
(1, 'Aveiro'),
(2, 'Beja'),
(3, 'Braga'),
(4, 'Bragança'),
(5, 'Castelo Branco'),
(6, 'Coimbra'),
(7, 'Évora'),
(8, 'Faro'),
(9, 'Guarda'),
(10, 'Leiria'),
(11, 'Lisboa'),
(12, 'Portalegre'),
(13, 'Porto'),
(19, 'Região Autónoma da Madeira'),
(20, 'Região Autónoma dos Açores'),
(14, 'Santarém'),
(15, 'Setúbal'),
(16, 'Viana do Castelo'),
(17, 'Vila Real'),
(18, 'Viseu');
COMMIT;



DROP TABLE IF EXISTS ptr_concelho;
CREATE TABLE IF NOT EXISTS concelho (
  id smallint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  district tinyint(2) UNSIGNED NOT NULL,
  name varchar(60) NOT NULL,
  PRIMARY KEY (id),
  KEY fk_concelho_district (district)
) 

ALTER TABLE ptr_concelho
  ADD CONSTRAINT fk_concelho_district FOREIGN KEY (district) REFERENCES district (id);
COMMIT;

INSERT INTO ptr_concelho (id, district, name) VALUES
(1, 1, 'Albergaria-a-Velha'),
(2, 1, 'Anadia'),
(3, 1, 'Arouca'),
(4, 1, 'Aveiro'),
(5, 1, 'Castelo de Paiva'),
(6, 1, 'Espinho'),
(7, 1, 'Estarreja'),
(8, 1, 'Mealhada'),
(9, 1, 'Murtosa'),
(10, 1, 'Oliveira de Azeméis'),
(11, 1, 'Oliveira do Bairro'),
(12, 1, 'Ovar'),
(13, 1, 'Santa Maria da Feira'),
(14, 1, 'Sever do Vouga'),
(15, 1, 'São João da Madeira'),
(16, 1, 'Vagos'),
(17, 1, 'Vale de Cambra'),
(18, 1, 'Águeda'),
(19, 1, 'Ílhavo'),
(20, 2, 'Aljustrel'),
(21, 2, 'Almodôvar'),
(22, 2, 'Alvito'),
(23, 2, 'Barrancos'),
(24, 2, 'Beja'),
(25, 2, 'Castro Verde'),
(26, 2, 'Cuba'),
(27, 2, 'Ferreira do Alentejo'),
(28, 2, 'Moura'),
(29, 2, 'Mértola'),
(30, 2, 'Odemira'),
(31, 2, 'Ourique'),
(32, 2, 'Serpa'),
(33, 2, 'Vidigueira'),
(34, 3, 'Amares'),
(35, 3, 'Barcelos'),
(36, 3, 'Braga'),
(37, 3, 'Cabeceiras de Basto'),
(38, 3, 'Celorico de Basto'),
(39, 3, 'Esposende'),
(40, 3, 'Fafe'),
(41, 3, 'Guimarães'),
(42, 3, 'Póvoa de Lanhoso'),
(43, 3, 'Terras de Bouro'),
(44, 3, 'Vieira do Minho'),
(45, 3, 'Vila Nova de Famalicão'),
(46, 3, 'Vila Verde'),
(47, 3, 'Vizela'),
(48, 4, 'Alfândega da Fé'),
(49, 4, 'Bragança'),
(50, 4, 'Carrazeda de Ansiães'),
(51, 4, 'Freixo de Espada à Cinta'),
(52, 4, 'Macedo de Cavaleiros'),
(53, 4, 'Miranda do Douro'),
(54, 4, 'Mirandela'),
(55, 4, 'Mogadouro'),
(56, 4, 'Torre de Moncorvo'),
(57, 4, 'Vila Flor'),
(58, 4, 'Vimioso'),
(59, 4, 'Vinhais'),
(60, 5, 'Belmonte'),
(61, 5, 'Castelo Branco'),
(62, 5, 'Covilhã'),
(63, 5, 'Fundão'),
(64, 5, 'Idanha-a-Nova'),
(65, 5, 'Oleiros'),
(66, 5, 'Penamacor'),
(67, 5, 'Proença-a-Nova'),
(68, 5, 'Sertã'),
(69, 5, 'Vila de Rei'),
(70, 5, 'Vila Velha de Ródão'),
(71, 6, 'Arganil'),
(72, 6, 'Cantanhede'),
(73, 6, 'Coimbra'),
(74, 6, 'Condeixa-a-Nova'),
(75, 6, 'Figueira da Foz'),
(76, 6, 'Góis'),
(77, 6, 'Lousã'),
(78, 6, 'Mira'),
(79, 6, 'Miranda do Corvo'),
(80, 6, 'Montemor-o-Velho'),
(81, 6, 'Oliveira do Hospital'),
(82, 6, 'Pampilhosa da Serra'),
(83, 6, 'Penacova'),
(84, 6, 'Penela'),
(85, 6, 'Soure'),
(86, 6, 'Tábua'),
(87, 6, 'Vila Nova de Poiares'),
(88, 7, 'Alandroal'),
(89, 7, 'Arraiolos'),
(90, 7, 'Borba'),
(91, 7, 'Estremoz'),
(92, 7, 'Montemor-o-Novo'),
(93, 7, 'Mora'),
(94, 7, 'Mourão'),
(95, 7, 'Portel'),
(96, 7, 'Redondo'),
(97, 7, 'Reguengos de Monsaraz'),
(98, 7, 'Vendas Novas'),
(99, 7, 'Viana do Alentejo'),
(100, 7, 'Vila Viçosa'),
(101, 7, 'Évora'),
(102, 8, 'Albufeira'),
(103, 8, 'Alcoutim'),
(104, 8, 'Aljezur'),
(105, 8, 'Castro Marim'),
(106, 8, 'Faro'),
(107, 8, 'Lagoa'),
(108, 8, 'Lagos'),
(109, 8, 'Loulé'),
(110, 8, 'Monchique'),
(111, 8, 'Olhão'),
(112, 8, 'Portimão'),
(113, 8, 'Silves'),
(114, 8, 'São Brás de Alportel'),
(115, 8, 'Tavira'),
(116, 8, 'Vila do Bispo'),
(117, 8, 'Vila Real de Santo António'),
(118, 9, 'Aguiar da Beira'),
(119, 9, 'Almeida'),
(120, 9, 'Celorico da Beira'),
(121, 9, 'Figueira de Castelo Rodrigo'),
(122, 9, 'Fornos de Algodres'),
(123, 9, 'Gouveia'),
(124, 9, 'Guarda'),
(125, 9, 'Manteigas'),
(126, 9, 'Mêda'),
(127, 9, 'Pinhel'),
(128, 9, 'Sabugal'),
(129, 9, 'Seia'),
(130, 9, 'Trancoso'),
(131, 9, 'Vila Nova de Foz Côa'),
(132, 10, 'Alcobaça'),
(133, 10, 'Alvaiázere'),
(134, 10, 'Ansião'),
(135, 10, 'Batalha'),
(136, 10, 'Bombarral'),
(137, 10, 'Caldas da Rainha'),
(138, 10, 'Castanheira de Pera'),
(139, 10, 'Figueiró dos Vinhos'),
(140, 10, 'Leiria'),
(141, 10, 'Marinha Grande'),
(142, 10, 'Nazaré'),
(143, 10, 'Pedrógão Grande'),
(144, 10, 'Peniche'),
(145, 10, 'Pombal'),
(146, 10, 'Porto de Mós'),
(147, 10, 'Óbidos'),
(148, 11, 'Alenquer'),
(149, 11, 'Amadora'),
(150, 11, 'Arruda dos Vinhos'),
(151, 11, 'Azambuja'),
(152, 11, 'Cadaval'),
(153, 11, 'Cascais'),
(154, 11, 'Lisboa'),
(155, 11, 'Loures'),
(156, 11, 'Lourinhã'),
(157, 11, 'Mafra'),
(158, 11, 'Odivelas'),
(159, 11, 'Oeiras'),
(160, 11, 'Sintra'),
(161, 11, 'Sobral deMonte Agraço'),
(162, 11, 'Torres Vedras'),
(163, 11, 'Vila Franca de Xira'),
(164, 12, 'Alter do Chão'),
(165, 12, 'Arronches'),
(166, 12, 'Avis'),
(167, 12, 'Campo Maior'),
(168, 12, 'Castelo de Vide'),
(169, 12, 'Crato'),
(170, 12, 'Elvas'),
(171, 12, 'Fronteira'),
(172, 12, 'Gavião'),
(173, 12, 'Marvão'),
(174, 12, 'Monforte'),
(175, 12, 'Nisa'),
(176, 12, 'Ponte de Sor'),
(177, 12, 'Portalegre'),
(178, 12, 'Sousel'),
(179, 13, 'Amarante'),
(180, 13, 'Baião'),
(181, 13, 'Felgueiras'),
(182, 13, 'Gondomar'),
(183, 13, 'Lousada'),
(184, 13, 'Maia'),
(185, 13, 'Marco de Canaveses'),
(186, 13, 'Matosinhos'),
(187, 13, 'Paredes'),
(188, 13, 'Paços de Ferreira'),
(189, 13, 'Penafiel'),
(190, 13, 'Porto'),
(191, 13, 'Póvoa de Varzim'),
(192, 13, 'Santo Tirso'),
(193, 13, 'Trofa'),
(194, 13, 'Valongo'),
(195, 13, 'Vila do Conde'),
(196, 13, 'Vila Nova de Gaia'),
(197, 14, 'Abrantes'),
(198, 14, 'Alcanena'),
(199, 14, 'Almeirim'),
(200, 14, 'Alpiarça'),
(201, 14, 'Benavente'),
(202, 14, 'Cartaxo'),
(203, 14, 'Chamusca'),
(204, 14, 'Constância'),
(205, 14, 'Coruche'),
(206, 14, 'Entroncamento'),
(207, 14, 'Ferreira do Zêzere'),
(208, 14, 'Golegã'),
(209, 14, 'Mação '),
(210, 14, 'Ourém'),
(211, 14, 'Rio Maior'),
(212, 14, 'Salvaterra de Magos'),
(213, 14, 'Santarém'),
(214, 14, 'Sardoal'),
(215, 14, 'Tomar'),
(216, 14, 'Torres Novas'),
(217, 14, 'Vila Nova da Barquinha'),
(218, 15, 'Alcochete'),
(219, 15, 'Alcácer do Sal'),
(220, 15, 'Almada'),
(221, 15, 'Barreiro'),
(222, 15, 'Grândola'),
(223, 15, 'Moita'),
(224, 15, 'Montijo'),
(225, 15, 'Palmela'),
(226, 15, 'Santiago do Cacém'),
(227, 15, 'Seixal'),
(228, 15, 'Sesimbra'),
(229, 15, 'Setúbal'),
(230, 15, 'Sines'),
(231, 16, 'Arcos de Valdevez'),
(232, 16, 'Caminha'),
(233, 16, 'Melgaço'),
(234, 16, 'Monção'),
(235, 16, 'Paredes de Coura'),
(236, 16, 'Ponte daBarca'),
(237, 16, 'Ponte de Lima'),
(238, 16, 'Valença'),
(239, 16, 'Viana do Castelo'),
(240, 16, 'Vila Nova de Cerveira'),
(241, 17, 'Alijó'),
(242, 17, 'Boticas'),
(243, 17, 'Chaves'),
(244, 17, 'Mesão Frio'),
(245, 17, 'Mondim deBasto'),
(246, 17, 'Montalegre'),
(247, 17, 'Murça'),
(248, 17, 'Peso da Régua'),
(249, 17, 'Ribeira de Pena'),
(250, 17, 'Sabrosa'),
(251, 17, 'Santa Marta de Penaguião'),
(252, 17, 'Valpaços'),
(253, 17, 'Vila Pouca de Aguiar'),
(254, 17, 'Vila Real'),
(255, 18, 'Armamar'),
(256, 18, 'Carregal do Sal'),
(257, 18, 'Castro Daire'),
(258, 18, 'Cinfães'),
(259, 18, 'Lamego'),
(260, 18, 'Mangualde'),
(261, 18, 'Moimenta da Beira'),
(262, 18, 'Mortágua'),
(263, 18, 'Nelas'),
(264, 18, 'Oliveira de Frades'),
(265, 18, 'Penalva do Castelo'),
(266, 18, 'Penedono'),
(267, 18, 'Resende'),
(268, 18, 'Santa Comba Dão'),
(269, 18, 'Sernancelhe'),
(270, 18, 'Sátão'),
(271, 18, 'São João da Pesqueira'),
(272, 18, 'São Pedro do Sul'),
(273, 18, 'Tabuaço'),
(274, 18, 'Tarouca'),
(275, 18, 'Tondela'),
(276, 18, 'Vila Nova de Paiva'),
(277, 18, 'Viseu'),
(278, 18, 'Vouzela'),
(279, 19, 'Calheta'),
(280, 19, 'Câmara de Lobos'),
(281, 19, 'Funchal'),
(282, 19, 'Machico'),
(283, 19, 'Ponta do Sol'),
(284, 19, 'Porto Moniz'),
(285, 19, 'Porto Santo'),
(286, 19, 'Ribeira Brava'),
(287, 19, 'Santa Cruz'),
(288, 19, 'Santana'),
(289, 19, 'São Vicente'),
(290, 20, 'Angra do Heroísmo'),
(291, 20, 'Calheta'),
(292, 20, 'Corvo'),
(293, 20, 'Horta'),
(294, 20, 'Lagoa'),
(295, 20, 'LajesdasFlores'),
(296, 20, 'Lajes do Pico'),
(297, 20, 'Madalena'),
(298, 20, 'Nordeste'),
(299, 20, 'Ponta Delgada'),
(300, 20, 'Povoação'),
(301, 20, 'Praia da Vitória'),
(302, 20, 'Ribeira Grande'),
(303, 20, 'Santa Cruz da Graciosa'),
(304, 20, 'Santa Cruz das Flores'),
(305, 20, 'São Roque do Pico'),
(306, 20, 'Velas'),
(307, 20, 'Vila do Porto'),
(308, 20, 'Vila Franca do Campo');









DROP TABLE IF EXISTS ptr_userregistado;
CREATE TABLE IF NOT EXISTS ptr_userregistado (
  nif int(11) NOT NULL AUTO_INCREMENT,
  nome char(20) NOT NULL,
  sobreNome char(30) NOT NULL,
  genero char(1) NOT NULL,
  email char(255) NOT NULL,
  password char(255) NOT NULL,
  morada char(255) NOT NULL,
  codigoPostal char(8) NOT NULL,
  distrito smallint(6) NOT NULL,
  concelho smallint(6) NOT NULL,
  dataNascimento date NOT NULL,
  estadoConta tinyint(4) NOT NULL DEFAULT '0',
  dataRegistoTimeStamp datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  tipoDeConta tinyint(4) NOT NULL,
  contato int(9) NOT NULL,
  apiKey char(50) NOT NULL,
  termosEServicos tinyint(1) NOT NULL DEFAULT '0',
  observacoes text NOT NULL,
  anuncios tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (nif)

  CONSTRAINT fk_ptr_userregistado_ptr_concelho ;
  FOREIGN KEY (concelho) REFERENCES ptr_concelho (id)
  
  CONSTRAINT fk_ptr_userregistado_ptr_distrito
  FOREIGN KEY (distrito) REFERENCES ptr_distrito (id);
  
)




DROP TABLE IF EXISTS ptr_fornecedor;
CREATE TABLE IF NOT EXISTS ptr_fornecedor (
  idFornecedor int(11) NOT NULL AUTO_INCREMENT,
  descricao text NOT NULL,
  nomeEmpresa char(200) NOT NULL,
  categoriaProdutos char(200) NOT NULL,
  webSite char(200) NOT NULL,
  PeriodoXDiasCancelar int(11) NOT NULL,
  poluicaoGerada float NOT NULL,
  registoSaida float NOT NULL,
  ConsumoRecursos float NOT NULL,
  PRIMARY KEY (idFornecedor)

  CONSTRAINT fk_ptr_fornecedor_ptr_userregistado
  FOREIGN KEY (idFornecedor) REFERENCES ptr_userregistado (nif)
)


DROP TABLE IF EXISTS ptr_armazemFornecedor;
CREATE TABLE IF NOT EXISTS ptr_armazemFornecedor (
  idArmazemFornecedor int(11) NOT NULL AUTO_INCREMENT,
  idFornecedor int(11) NOT NULL,
  nome char(50) NOT NULL,
  morada char(150) NOT NULL,
  codigoPostal char(8) NOT NULL,
  custoManutencao float NOT NULL DEFAULT '0',
  estado char(20) NOT NULL DEFAULT 'Ativo',
  referigeracao tinyint(1) NOT NULL DEFAULT '0',
  poluicaoGerada float NOT NULL DEFAULT '0',
  PRIMARY KEY (idArmazemFornecedor)

  CONSTRAINT ptr_armazemFornecedor_ptr_armazemFornecedor
  FOREIGN KEY (idFornecedor) REFERENCES ptr_fornecedor(idFornecedor)
) 

DROP TABLE IF EXISTS ptr_produto;
CREATE TABLE IF NOT EXISTS ptr_produto (
  idProduto int(11) NOT NULL AUTO_INCREMENT,
  idFornecedor int(11) NOT NULL,
  nome char(200) NOT NULL,
  descricao varchar(2000) NOT NULL,
  tipo char(30) NOT NULL,
  tags varchar(100) NOT NULL,
  precoSemIva float NOT NULL,
  recursosConsumidos float NOT NULL DEFAULT '0',
  custoManutencao float NOT NULL DEFAULT '0',
  estado char(25) NOT NULL,
  tipoIVA tinyint(5) NOT NULL,
  modoDeVenda int(11) NOT NULL,
  pesoPorVenda float DEFAULT NULL,
  arquivado tinyint(1) NOT NULL,
  notasInternasAoFornecedor varchar(200) NOT NULL,
  dataCriacaoTimeStamp date NOT NULL,
  PRIMARY KEY (idProduto)

  CONSTRAINT ptr_produto_ptr_armazemFornecedor
  FOREIGN KEY (idFornecedor) REFERENCES ptr_fornecedor(idFornecedor)

)

DROP TABLE IF EXISTS ptr_img_produto
CREATE TABLE IF NOT EXISTS ptr_img_produto(
  idProduto int(11) NOT NULL 
  idImagem int(11) NOT NULL

  PRIMARY KEY (idProduto, idImagem)

  CONSTRAINT ptr_img_produto_ptr_produto
  FOREIGN KEY (idProduto) REFERENCES ptr_produto(idProduto)

)


DROP TABLE IF EXISTS ptr_preferencias;
CREATE TABLE IF NOT EXISTS ptr_preferencias (
  idUser int(11) NOT NULL,
  idArtigo int(11) NOT NULL,
  PRIMARY KEY (idArtigo,idUser)

  CONSTRAINT ptr_preferencias_ptr_userregistado
  FOREIGN KEY (idUser) REFERENCES ptr_userregistado(nif)

  CONSTRAINT ptr_preferencias_ptr_produto
  FOREIGN KEY (idUser) REFERENCES ptr_produto(idProduto)

) 


DROP TABLE IF EXISTS ptr_produto_armazem;
CREATE TABLE IF NOT EXISTS ptr_produto_armazem (
  idline int(11) NOT NULL,
  idProduto int(11) NOT NULL,
  idArmazemFornecedor int(11) NOT NULL
  validade date NOT NULL,
  stock int(11) NOT NULL DEFAULT '0',
  quantReservada int(11) NOT NULL,
  disponivelApartirData date NOT NULL,
  estado char(25) NOT NULL,

  CONSTRAINT ptr_produto_armazem_ptr_idProduto
  FOREIGN KEY (idProduto) REFERENCES ptr_produto(idProduto)

  CONSTRAINT ptr_produto_armazem_ptr_armazemFornecedor
  FOREIGN KEY (idArmazemFornecedor) REFERENCES ptr_armazemFornecedor(idArmazemFornecedor)

)

DROP TABLE IF EXISTS ptr_cesto;
CREATE TABLE IF NOT EXISTS ptr_cesto (
  idLinha int(11) NOT NULL AUTO_INCREMENT,
  idUser int(11) NOT NULL,
  idArtigo int(11) NOT NULL,
  quantidade int(11) NOT NULL,
  PRIMARY KEY (idLinha)

  CONSTRAINT ptr_cesto_ptr_userregistado
  FOREIGN KEY (idUser) REFERENCES ptr_userregistado(nif)

  CONSTRAINT ptr_cesto_ptr_produto_armazem
  FOREIGN KEY (idArtigo) REFERENCES ptr_produto_armazem(idline)

)


DROP TABLE IF EXISTS ptr_encomenda;
CREATE TABLE IF NOT EXISTS ptr_encomenda (
  idEncomenda int(11) NOT NULL AUTO_INCREMENT,
  refEncomenda char(8) NOT NULL,
  idCliente int(11) DEFAULT NULL,
  nome char(20) NOT NULL,
  sobreNome char(30) NOT NULL,
  email char(255) NOT NULL,
  telefone int(11) NOT NULL,
  nif int(9) NULL,
  morada char(255) NOT NULL,
  codigoPostal char(8) NOT NULL,
  distrito smallint(6) NOT NULL,
  concelho smallint(6) NOT NULL,
  dataEncomenda datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  estadoEncomenda int(11) NOT NULL,
  poluiçaoTotalGerada float DEFAULT NULL,
  mensagemAdicional varchar(400) DEFAULT NULL,
  nomeFicheiroFatura int(11) DEFAULT NULL,
  PRIMARY KEY (idEncomenda)

  CONSTRAINT ptr_encomenda_ptr_userregistado
  FOREIGN KEY (idCliente) REFERENCES ptr_userregistado(nif)

) 





DROP TABLE IF EXISTS ptr_artigossubencomenda;
CREATE TABLE IF NOT EXISTS ptr_artigossubencomenda (
  idArtigosSubEncomenda int(11) NOT NULL AUTO_INCREMENT,
  idSubEncomenda int(11) NOT NULL,
  idPodutoArmazem int(11) NOT NULL, -- referencia o id do produto e o armazem onde está
  nome char(120) NOT NULL,
  descricao char(250) NOT NULL,
  quantidade smallint(6) NOT NULL,
  valorArtigo float NOT NULL,
  poluicao float NOT NULL,
  PRIMARY KEY (idArtigosSubEncomenda)
) 



DROP TABLE IF EXISTS ptr_basestransportador;
CREATE TABLE IF NOT EXISTS ptr_basestransportador (
  idBase int(11) NOT NULL AUTO_INCREMENT,
  idTransportador int(11) NOT NULL,
  nome char(30) NOT NULL,
  morada char(250) NOT NULL,
  distrito smallint(6) NOT NULL,
  concelho smallint(6) NOT NULL,
  codigoPostal char(8) NOT NULL,
  custoManutencao float NOT NULL,
  poluicaoGerada float NOT NULL,
  estado char(20) NOT NULL,
  conselho smallint(6) NOT NULL,
  PRIMARY KEY (idBase,idTransportador)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS ptr_comentariosreview;
CREATE TABLE IF NOT EXISTS ptr_comentariosreview (
  idComentario int(11) NOT NULL AUTO_INCREMENT,
  idUser int(11) NOT NULL,
  idProduto int(11) NOT NULL,
  comentario char(250) DEFAULT NULL,
  estrelas int(11) NOT NULL,
  estado char(20) NOT NULL,
  data datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (idComentario)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;














DROP TABLE IF EXISTS ptr_servico;
CREATE TABLE IF NOT EXISTS ptr_servico (
  idServico int(11) NOT NULL AUTO_INCREMENT,
  matriculaVeiculo char(12) NOT NULL,
  foiPago tinyint(1) NOT NULL DEFAULT '0',
  custoFrete int(11) NOT NULL,
  pesoDaCarga float NOT NULL,
  estado int(11) NOT NULL,
  data date NOT NULL,
  moradaCarga char(150) NOT NULL,
  distritoCarga smallint(6) NOT NULL,
  conselhoCarga smallint(6) NOT NULL,
  moradaDescarga char(150) NOT NULL,
  distritoDescarga smallint(6) NOT NULL,
  conselhoDescarga smallint(6) NOT NULL,
  PRIMARY KEY (idServico)
)


DROP TABLE IF EXISTS ptr_subencomenda;
CREATE TABLE IF NOT EXISTS ptr_subencomenda (
  idSubEncomenda int(11) NOT NULL AUTO_INCREMENT,
  idEncomendaPai int(11) NOT NULL,
  estadoSubEncomenda int(11) NOT NULL,
  poluicaoGerada float NOT NULL,
  idFornecedor int(11) NOT NULL,
  PRIMARY KEY (idSubEncomenda),
  UNIQUE KEY idSubEncomenda (idSubEncomenda)
)


DROP TABLE IF EXISTS ptr_transportador;
CREATE TABLE IF NOT EXISTS ptr_transportador (
  idUserNif int(11) NOT NULL AUTO_INCREMENT,
  nomeEmpresa char(100) NOT NULL,
  nomeRepresentante char(30) NOT NULL,
  sedeMorada char(120) NOT NULL,
  sedeCodigoPostal char(8) NOT NULL,
  localidade char(50) NOT NULL,
  distrito char(20) NOT NULL,
  contacto int(11) NOT NULL,
  garantiaEntregaXHoras int(11) NOT NULL,
  website char(50) NOT NULL,
  PRIMARY KEY (idUserNif)
) 






DROP TABLE IF EXISTS ptr_veiculostransportador;
CREATE TABLE IF NOT EXISTS ptr_veiculostransportador (
  idVeiculo int(11) NOT NULL AUTO_INCREMENT,
  idBaseTransportador int(11) NOT NULL,
  matricula char(12) NOT NULL UNIQUE,
  tipoVeiculo char(20) NOT NULL,
  marca char(20) NOT NULL,
  consumoPorCemKm float NOT NULL,
  poluicaoPorCemKm float NOT NULL,
  tipoDeCombustivel char(20) NOT NULL,
  cargaMaxima float NOT NULL,
  custoPorHora float NOT NULL,
  estado char(20) NOT NULL,
  frigorifico tinyint(1) NOT NULL,
  anoDoVeiculo date NOT NULL,
  PRIMARY KEY (idVeiculo)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

