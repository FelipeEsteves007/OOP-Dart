class Conta {
  String titular;
  double _saldo;

  Conta(this.titular, this._saldo); // função construtora

  void receber(double valor) {  
    _saldo += valor;
    imprimiSaldo();
  }

  void enviar(double valor) {
    if (_saldo >= valor){
     _saldo -= valor;
     imprimiSaldo();
    }
  }

  void imprimiSaldo (){
    print("O saldo atual de $titular é: R\$$_saldo");
  }
}

class ContaCorrente extends Conta {  // herança
  double emprestimo = 300;
  ContaCorrente(super.titular, super._saldo);

  @override // sobrescrita
  void enviar(double valor) {
    if (_saldo + emprestimo >= valor ){
      _saldo -= valor;
      imprimiSaldo();
    }
  }
}

class ContaPoupanca extends Conta {
  double rendimento = 0.05;
  
  ContaPoupanca(super.titular, super._saldo);

  void calculaRendimento (){
    _saldo +=  _saldo  * rendimento;
  }
}