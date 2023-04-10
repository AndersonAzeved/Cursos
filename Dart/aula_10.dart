import 'dart:convert';

void main() {
  String json = '''
  {
    "usuario":"anderson.com",
    "senha":123456,
    "permissoes":[
      "owner","admin"
    ]
  }

  ''';
  print(json);
  //transformando json em mapa
  Map resultJson = jsonDecode(json);
  print(resultJson["permissoes"][0]);

  //transformando mapa em json
  Map mapa = {
    'nome': 'anderson',
    'pass': 123,
    'permissoes': ["owner", "admin"]
  };

  var result = jsonEncode(mapa);
  print(result);
}
