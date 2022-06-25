import '../../util/clean.dart';
import '../../util/linha.dart';
import '../../util/read_line.dart';
import '../home/Home.dart';
import '../saldo e extrato/extrato.dart';

void voltarOuSair() {
  print("1-voltar ao menu inicial\n"
      "2- sair");
  int option = readInt(message: "Escolha uma das opções acima: ");

  if (option == 1) {
    home();
  }
  if (option == 2) {
    linha();
    String answer = readString(message: "Tem certeza que deseja sair? s/n");
    if (answer == "n") {
      clean();
      mostrarExtrato();
    }
    if (answer == "s") {
      clean();
      linha();
      print("Thank you for using SABB BANK");
      linha();
    }
  }
}
