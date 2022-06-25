import '../../util/clean.dart';
import '../../util/read_line.dart';
import '../../variables/caluladora_do_saldo.dart';
import '../../variables/users.dart';
import '../emprestimo/init.dart';
import '../deposito/void.dart';
import '../saldo e extrato/extrato.dart';

void home() {
  print("-------------------------------------------------------");
  print("---------    Bem vindo ao Sabb Bank      --------------");
  print("-------------------------------------------------------");

  print(currentUser["nome"]);
  print("Seu saldo é de: ${mostra()}");
  print("Temos essas opções para voce escolher: ");

  print("(1). Pix");
  print("(2). Deposito");
  print("(3). Saldo e extrato");
  print("(4). Emprestimo");
  print("(5). Trasferências");
  print("(0). Sair da conta");

  int opition = readInt(message: "Qual opção voçe deseja?");

  clean();
  switch (opition) {
    case 1:
      // pix
      break;
    case 2:
      main();
      break;
    case 3:
      mostrarExtrato();
      break;
    case 4:
      init();
      break;
    case 5:
      // transferencias
      break;
    case 0:
      print("Sair da conta.");
      break;
    default:
      home();
  }
}
