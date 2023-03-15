//Future, Async e Await

void main() {
  String nome = "Anderson";
  String cep = getCepByName("Rua José");

  print(cep);
  print(nome);
}

// external service
String getCepByName(String name) {
  return "59.360-000";
}
