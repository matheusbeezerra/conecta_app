import 'package:conecta_app/components/campus/icones_produtos_green/icone_biblioteca.dart';
import 'package:conecta_app/components/campus/icones_produtos_green/icone_cinema.dart';
import 'package:conecta_app/components/campus/icones_produtos_green/icone_cinemateca.dart';
import 'package:conecta_app/components/campus/icones_produtos_green/icone_engenho.dart';
import 'package:conecta_app/components/campus/icones_produtos_green/icone_museu.dart';
import 'package:conecta_app/components/campus/icones_produtos_green/icone_pesquisas.dart';
import 'package:conecta_app/components/campus/icones_produtos_green/icone_pinacoteca.dart';
import 'package:conecta_app/components/campus/icones_produtos_green/icone_villa.dart';
import 'package:conecta_app/models/campus/info_card_campus.dart';
//Dados e imagens dos Campi,mokados para o carossel de campi na home

const dataCampus = [
  DataCardCampus(
      indice: '0',
      campus: 'Campus Gilberto Freyre',
      rota: 'CampusGilbertoFreyre()',
      local: 'Casa Forte',
      end: 'Av. Dezessete de Agosto, 2187 - Casa Forte, Recife - PE, 52061-540',
      produtos:[ IconeCinema(),Iconecinemateca(),IconeMuseu(),IconePinacoteca(), ],
      comoChegar: 'https://www.gov.br/fundaj',
      imageAsset: 'assets/home/carrossel/campusGilbertoFreyre.png',
      textoDescritivo:
          'No campus Gilberto Freyre, no bairro de Casa Forte, estão localizadas a presidência, a sede administrativa, a sala de reunião do Conselho Diretor e a maior parte dos equipamentos culturais vinculados à Diretoria de Memória, Educação, Cultura e Arte (Dimeca).'),
  DataCardCampus(
      indice: '1',
      campus: 'Campus Anísio Teixeira',
      rota:'CampusAnisioTeixeira()',
      local: 'Apipucos',
      end: 'R. Dois Irmãos, 92 - Dois Irmãos,Recife - PE, 52071-440',
     produtos:[ IconeBiblioteca(), IconePesquisas(), IconeVilla(), ],
      comoChegar: 'https://www.gov.br/fundaj',
      imageAsset: 'assets/home/carrossel/campusAnisioTeixeira.png',
      textoDescritivo:
          'No campus Anísio Teixeira, bairro de Apipucos, está a Diretoria de Pesquisas Sociais, que desenvolve pesquisas e estudos, publicações e eventos científicos. No mesmo campus funcionam o Centro de Documentação e de Estudos da História Brasileira Rodrigo Mello Franco, a Biblioteca Blanche Knopf, especializada em ciências sociais, e a Villa Digital,  equipamentos vinculados à Diretoria de Memória, Educação, Cultura e Arte (Dimeca).'),
  DataCardCampus(
      indice: '2',
      campus: 'Campus Ulysses Pernambucano',
      rota:'CampusUlyssesPernambucano()',
      local: 'Derby',
      end: 'R. Henrique Dias, 609 - Derby,Recife - PE, 52010-100',
      produtos:[IconeCinema(), ],
     comoChegar: 'https://www.gov.br/fundaj',
      imageAsset: 'assets/home/carrossel/campusUlysses.png',
      textoDescritivo:
          'O campus Ulysses Pernambucano abriga atividades de formação lato e stricto sensu e a Escola de Inovação e Políticas Públicas (EIPP), vinculada à   Diretoria de Formação Profissional e Inovação (Difor). Esse campus reúne, ainda, a sala de Exposição Vicente do Rego Monteiro, a Editora Massangana, o Cinema da Fundação, e as salas de Leitura Nilo Pereira e de Videoarte Cristina Tavares, equipamentos vinculados à Diretoria de Memória, Educação, Cultura e Arte (Dimeca).'),
  DataCardCampus(
      indice: '3',
      campus: 'Engenho Massangana',
      rota:'CampusEngenhoMassangana()',
      local: 'Cabo',
      end: 'Cabo de Santo Agostinho - PE, 54510-992',
      produtos:[ IconeEngenho(), ],
     comoChegar: 'https://www.gov.br/fundaj',
      imageAsset: 'assets/home/carrossel/engenhoMassangana.png',
      textoDescritivo:
          'Também está sob a guarda da Fundação Joaquim Nabuco o Engenho Massangana, no Cabo de Santo Agostinho. Tombado como Parque Nacional da Abolição, o Engenho Massangana foi morada do abolicionista Joaquim Nabuco durante parte da sua infância.'),
  DataCardCampus(
      indice: '4',
      campus: 'Cinema do Porto',
      rota:'CampusCinemaPorto()',
      local: ' Cais do Apolo',
      end: 'Cais do Apolo, 222 - 16º andar ,Recife, PE, 50030-230',
      produtos:[ IconeCinema(), ],
      comoChegar: 'https://www.gov.br/fundaj',
      imageAsset: 'assets/home/carrossel/cinemaPorto.png',
      textoDescritivo:
          'O Cinema do Porto, inaugurado em 19 de dezembro de 2021, é uma das três salas de exibição gerenciadas pela Fundação Joaquim Nabuco (Fundaj), que também administra o Cinema do Derby e o Cinema do Museu. Localizado no Bairro do Recife, o espaço se destaca por sua contribuição para a educação cinematográfica, especialmente em Pernambuco. Com uma área total de 511 m², o Cinema do Porto possui um telão de 7x3 metros e equipamentos de som e projeção digital de última geração. Além disso, o local é totalmente acessível, com assentos para pessoas obesas, com mobilidade reduzida e espaço para cadeirantes. As salas estão equipadas com tecnologia de projeção digital DCP (projetor Barco 4K 3D) e sistema de som Dolby Digital 7.1. Os ingressos para as sessões podem ser adquiridos online, e a meia entrada é válida para estudantes, professores, idosos e pessoas com deficiência. Assim, o Cinema do Porto se consolida como um espaço importante para a formação, pesquisa e difusão do cinema produzido em Pernambuco.'),
];
