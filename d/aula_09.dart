void main() {
  List<String> lista = ["Anderson", "Azevedo"];

  //  chave,   valor
  Map<String, String> mapa = {"chave": "valor"};

  print(mapa['chave']);

  //Inserindo valor no mapa
  mapa.putIfAbsent('novaChave', () => 'novoValor');

  mapa['novaChaveDois'] = 'novoValorDois';

  //removendo do mapa
  mapa.remove('chave');

  mapa.update('novaChaveDois', (value) => 'atualizando2');
  print(mapa);

  mapa.forEach((chave, valor) => print("A chave é: $chave, o valor é $valor"));

  mapa.keys.forEach(print);

  mapa.values.forEach(print);
}
