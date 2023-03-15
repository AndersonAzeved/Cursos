//Future, Async e Await

void main() {
  String nome = "Anderson";
  //String cep = getCepByName("Rua José");
  Future<String> cepFuture = getCepByName("Rua José");
  late String cep;

  cepFuture.then((result) => cep = result);

  print(cep);
  print(nome);
}

// external service
//String getCepByName(String name) {
//return "59.360-000";
//}

// external service
Future<String> getCepByName(String name) {
  //simulando requisição
  return Future.value("59.360-000");
}
