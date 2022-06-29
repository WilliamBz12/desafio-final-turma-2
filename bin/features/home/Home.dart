import '../../util/clean_screen.dart';
import '../../util/read.dart';
import '../../variables/caluladora_do_saldo.dart';
import '../../variables/users.dart';
import '../authentication/step2.dart';
import '../emprestimo/init.dart';
import '../deposito/void.dart';
import '../pix/minhas_chaves/pix_area.dart';
import '../saldo e extrato/extrato.dart';

void home() {
  print("-------------------------------------------------------");
  print("---------    Bem vindo ao Sabb Bank      --------------");
  print("-------------------------------------------------------");

  print('${currentUser["nome"]} ${currentUser["sobrenome"]}');
  print("Saldo R\$:$balance");
  print("Menu:");

  print("(1). Pix");
  print("(2). Depósito");  
  print("(3). Emprestimo");
  print("(4). Trasferências");
  print("(5). Saldo e extrato");
  print("(6). Sair da conta");

  int opition = readInt(message: "Qual opção voçe deseja?");

  cleanScreen();
  switch (opition) {
    case 1:
      pixArea();
      break;
    case 2:
      main();
      break;
    case 3:
      init();
      break;
    case 4:
      // transferencias
      break;
    case 5:
      mostrarExtrato();
      break;
    case 6:
      step2();
      break;
    default:
      home();
  }
}
