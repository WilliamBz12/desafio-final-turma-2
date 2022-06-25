import 'dart:io';
import 'step3.dart';
import 'step4.dart';

void step2() {
  print("-----------------------");
  print("|1| para fazer login");
  print("-----------------------");
  print("-----------------------");
  print("|2| para fazer cadastro");
  print("-----------------------");

  String? escolhatext = stdin.readLineSync();
  int escolha = int.tryParse(escolhatext ?? "0") ?? 0;

  if (escolha == 1) {
    step4();
  } else {
    step3();
  }
}
