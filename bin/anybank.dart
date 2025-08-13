import 'package:my_app/conta.dart';

void main() {
  Conta contaMatheus = Conta("Matheus", 1000);
  Conta contaFelipe = Conta("Felipe", 2000);
  ContaCorrente contaLari = ContaCorrente("Lari", 1000);
  ContaPoupanca contaVand = ContaPoupanca("Vand", 1000);

  List<Conta> contas = <Conta>[contaMatheus, contaFelipe];

  for (Conta conta in contas) {
    conta.imprimiSaldo();
  }

  contaFelipe.receber(200);
  contaFelipe.enviar(300);

  contaLari.imprimiSaldo();
  contaLari.enviar(1300);

  contaVand.imprimiSaldo();
  contaVand.calculaRendimento();
  contaVand.imprimiSaldo();
}

