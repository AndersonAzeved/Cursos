// Tratamento de Erros: Exceptions

/*
void main() {
  try {
    //tentar alguma coisa
    print((2 / 0).toInt());
  } catch (e, stackStrace) {
    //capturar a falha
    //print(stackStrace);
    print('printando o erro $e');
    //rethrow; //propagar o erro
    //throw Exception('Ocorreu um erro xpto'); //retornar um novo erro
    throw CustomError(error: "erro customizado");
  }
}

class CustomError implements Exception {
  String error;
  CustomError({required this.error});
}
*/

void main() {
  Login login = Login();
  try {
    login.logar();
  } on PasswordLenghtError catch (e) {
    print('Falhou ao logar');
  } catch (e) {
    print('Outro erro');
  } finally {
    print("Finalizou");
  }
}

class PasswordLenghtError implements Exception {
  PasswordLenghtError();
}

class Login {
  void logar() {
    String user = 'admin';
    String pass = '123';

    //if (pass.length <= 6) throw PasswordLenghtError();

    if (pass.length <= 6) throw Exception();
  }
}
