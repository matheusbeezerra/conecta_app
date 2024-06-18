// Informações que deverão conter nos Cards dos livros

class Livros {
  final String id;
  final String title;
  final String imageAsset;
  final String resumo;
  final String descricao;
  final String autor;
  final String verMais;
  final String url;

  // O construtor deve ser assim:
  const Livros({
    required this.id,
    required this.title,
    required this.imageAsset,
    required this.resumo,
    required this.descricao,
    required this.autor,
    required this.verMais,
    required this.url,
    
  });

}
