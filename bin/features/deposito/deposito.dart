import '../../util/read.dart';
import '../../variables/caluladora_do_saldo.dart';
import '../home/Home.dart';
import 'void.dart';

Future<void> depos() async {
  double value = readDouble(message: "Digite o Valor do Deposito:? ");

  print("Carregando.......... espere alguns segundos................");

  await Future.delayed(Duration(seconds: 3));
  
  print("Voçe depositou: R\$$value.");

  Map<String, dynamic> valor = {
    "valor": value,
  };
  allDeposits.add(valor);
  money1.add(valor);
  balance = mostra();
  // função do saldo
  print('Saldo: R\$ $balance');
  print("-----------------------------------------------------------");

  String answer;
  do {
    String answertext =
        readString(message: "voce deseja realizar outro deposito:?");
    answer = answertext;
    if (answer == "s") {
      main();
    }
  } while (answer == "s");
  home();
}
