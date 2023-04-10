abstract class Pessoa {
  String comunicar();
}

class PessoaET implements Pessoa {
  String comunicar() {
    return "Olá Mundo!";
  }
}

class PessoaNaoET implements Pessoa {
  String comunicar() {
    return "Bom dia!";
  }
}

// Herança
class Pai {
  String falar() {
    return "gírias";
  }
}

class Filho extends Pai {}

//Polimorfismo
abstract class Pagamento {
  void pagar();
}

class PagarComBoleto implements Pagamento {
  void pagar() {
    print("Pagamento com Boleto");
  }
}

class PagarComPix implements Pagamento {
  void pagar() {
    print("Pagamento com Pix");
  }
}

void main() {
  Pagamento pagamento = PagarComBoleto();
  pagamento.pagar();

  pagamento = PagarComPix();
  pagamento.pagar();

  print("Olá");
}
