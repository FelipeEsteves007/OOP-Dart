import 'package:my_app/conta.dart';

void main() {

  ContaCorrente contaLari = ContaCorrente("Lari", 1000);
  ContaPoupanca contaVand = ContaPoupanca("Vand", 1000);
  ContaEmpresa contaFe = ContaEmpresa("FEFE", 1000);
  ContaInvestimento contaLipe = ContaInvestimento("LIPE", 2000);

  contaFe.receber(1000);
  contaLipe.enviar(1000);

}

