import 'dart:io';
import '../../util/clean.dart';
import 'show.dart';
import 'make_a_loan.dart';
import '../home/Home.dart';
import '../../util/read_line.dart';

void init() {
  int option = 0;
  print("--------------------------------------------------");
  print("------------------  Emprestimo   -----------------");
  print("--------------------------------------------------");
  do {
    print("[1] Fazer empréstimo.");
    print("[2] Ver empréstimos.");
    print("[3] Voltar ao menu inicial.");
    option = readInt (message: "Escolha uma das opções acima:");
    clean();
    if (option == 1) {
      informations();
    } else if (option == 2) {
      vizualizar();
    } else if (option == 3) {
      home();
    } else {
      print("Opção invalida!!Tente novamente.");
    }
  } while (option != 3);
}
