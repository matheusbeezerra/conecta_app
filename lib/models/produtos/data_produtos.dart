import 'package:conecta_app/models/produtos/info_produtos.dart';
import 'package:conecta_app/pages/cinema/home_cinema.dart';
import 'package:conecta_app/pages/editora/editora_home.dart';
import 'package:conecta_app/pages/home/home_page.dart';
import 'package:conecta_app/pages/museu/muhne_page.dart';

//Dados e imagens dos Campus,mokados para o carossel de campus na home

const dataProdutos = [   
  DataProdutos(
    produto: 'Museu',
    imgProduto:'assets/home/produtos/imgMuHNE.png',
    endProduto:MuseuPage()
  ),
  DataProdutos(
    produto: 'Cinema',
    imgProduto:'assets/home/produtos/imgCinema.png',
    endProduto:HomeCinemaPage()
  ),
  DataProdutos(
    produto: 'Cinemateca',
    imgProduto:'assets/home/produtos/imgCinemateca.png',
    endProduto:HomePage()
  ),
  DataProdutos(
    produto: 'Editora',
    imgProduto:'assets/home/produtos/imgEditora.png',
    endProduto:EditoraPage()
  ),
  DataProdutos(
    produto: 'Formação',
    imgProduto:'assets/home/produtos/imgFormacao.png',
    endProduto:HomePage()
  ),
  DataProdutos(
    produto: 'PIBIC',
    imgProduto:'assets/home/produtos/imgPibic.png',
    endProduto:HomePage()
  ),
  DataProdutos(
    produto: 'Pesquisa\nEscolar',
    imgProduto:'assets/home/produtos/imgPesquisaEscolar.png',
    endProduto:HomePage()
  ),
  DataProdutos(
    produto: 'Villa\nDigital',
    imgProduto:'assets/home/produtos/imgVillaDigital.png',
    endProduto:HomePage()
  ),
];
