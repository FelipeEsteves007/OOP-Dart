void main (){
  Conta contaMatheus = Conta("Matheus", 1000);
  Conta contaFelipe = Conta("Felipe", 2000);

  List<Conta> contas = <Conta>[contaMatheus, contaFelipe];

  for (Conta conta in contas){
    print(conta.titular);
    print(conta.saldo);
  }

  contaFelipe.saldo = 10;
  print(contaFelipe.saldo);
  }

class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo); // função construtora 
}

