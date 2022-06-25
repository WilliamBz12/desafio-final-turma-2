import '../../util/clean.dart';
import '../../variables/caluladora_do_saldo.dart';


void vizualizar() {
  clean();
  Map<String, dynamic> acessar;
  print("emprestimos aprovados");
  for (acessar in loan) {
    print("${loan.indexOf(acessar) + 1}º empréstimo:");
    acessar.forEach((key, value) {
      print("$key : $value");
  
    });
  }
  print("--------------------------------------------------------------------");

  print("empréstimos negados");
  for (acessar in loanError) {
    print("${loanError.indexOf(acessar) + 1}º empréstimo");
    acessar.forEach((key, value) {
      print("$key : $value");
    });
  }
  // print("${loan[0]["valor_a_pagar"].toStringAsFixed(3)}");
}
