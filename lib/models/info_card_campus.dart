
// Informações que deverão conter nos cards dos campus

class DataCardCampus {
  final String campus;
  final String imageAsset;
  final String local;
  final String end;
  final String comoChegar;
  final String textoDescritivo;
  
  

  // O construtor deve ser assim:
  const DataCardCampus({
    required this.campus,
    required this.imageAsset,
    required this.local,
    required this.end,
    required this.comoChegar,
    required this.textoDescritivo,
    
  });
}
