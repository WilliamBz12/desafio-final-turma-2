import '../../util/read_line.dart';
import '../../variables/usuarios_pre_definidos.dart';


void register() {
  print("--------------------------------------------------");
  print("-----------------  Deposito  ---------------------");
  print("--------------------------------------------------");

  print("coloque as informação para poder acessar a conta: ");

  String name = readString(message: "Qual o nome da conta do usuario:? ");

  int agency = readInt(message: "digite o numero da agencia:? ");

  int account = readInt(message: "digite o numero da Conta:? ");

  int digit = readInt(message: "Digite o Digito da conta:? ");

  bool welcome = bills.any((element) =>
      element["Nome"] == name &&
      element["Agencia"] == agency &&
      element["conta"] == account &&
      element["digito"] == digit);

  if (welcome) {
    print("Conta Registrada");
  } else {
    print("Conta não registrada");
    register();
  }
}
