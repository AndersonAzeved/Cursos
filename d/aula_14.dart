// Extension

void main() {
  String nome = 'anderson';
  print(nome.toUpperCase());
  print(nome.toString());
  print(nome.toLowerCase());

  print(nome[0].toUpperCase() + nome.substring(1));

  print(Utils().toFirstCharToUpperCase(nome));

  print('Usando extension: ${nome.toFirstCharToUpperCase()}');
  print('jose'.toFirstCharToUpperCase());

  print(EnumTest.enumValue.toValue());
}

//Transformar primeira letra da string em maiúscula usando classe
class Utils {
  toFirstCharToUpperCase(String value) {
    return value[0].toUpperCase() + value.substring(1);
  }
}

//usando extension
extension ExtensionsString on String {
  String toFirstCharToUpperCase() {
    return this[0].toUpperCase() + this.substring(1);
  }
}

enum EnumTest {
  enumValue;
}

extension ExtensionsEnum on Enum {
  String toValue() {
    //return 'xpto';
    Map map = {EnumTest.enumValue: 'xpt00'};
    return map[this];
  }
}
