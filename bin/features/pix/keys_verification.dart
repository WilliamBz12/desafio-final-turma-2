import '../../util/read.dart';
import '../../variables/pix.dart';
import '../../variables/users.dart';
import '../home/Home.dart';
import 'register_new_key.dart';

bool sameKeys = true;
void keysVerification() {
  if (type == 1) {
    cfpCnpjVerification();
  } else if (type == 2) {
    cellVerification();
  } else if (type == 3) {
    emailVerification();
  } else if (type == 4) {
    randomVerification();
  }
}

void emailVerification() {
  sameKeys = true;
  while (sameKeys) {
    newKey = readString(message: "E-mail:");
    sameKeys = checklist.any((element) => element["chave"] == newKey);

    if (!sameKeys) {
      type -= 1;
      newKeyUser["saldo"] = balance;
      newKeyUser["usuário"] = currentUser["nome"];
      newKeyUser["tipo"] = typeKey[type];
      newKeyUser["chave"] = newKey;
      keysOneUSer.add(newKeyUser);
      checklist.add(newKeyUser);

      print('\nNova chave cadastrada! :)');
      print('Tipo de chave: ${newKeyUser["tipo"]}\n'
          'Chave: ${newKeyUser["chave"]}\n');
    } else {
      print('     <<Chave, já cadastrada!>>\nDigite um e-mail diferente.\n');
    }
  }
}

void randomVerification() {
  sameKeys = true;
  while (sameKeys) {
    newKey = readString(message: "Chave aleatória:");
    sameKeys = checklist.any((element) => element["chave"] == newKey);

    if (!sameKeys) {
      type -= 1;
      newKeyUser["saldo"] = balance;
      newKeyUser["usuário"] = currentUser["nome"];
      newKeyUser["tipo"] = typeKey[type];
      newKeyUser["chave"] = newKey;
      keysOneUSer.add(newKeyUser);
      checklist.add(newKeyUser);

      print('\nNova chave cadastrada! :)');
      print('Tipo de chave: ${newKeyUser["tipo"]}\n'
          'Chave: ${newKeyUser["chave"]}\n');
    } else {
      print('     <<Chave, já cadastrada!>>\nDigite uma chave diferente.\n');
    }
  }
}

void cellVerification() {
  bool positiveKey = false;

  while (positiveKey == false) {
    sameKeys = true;

    while (sameKeys) {
      newKey = readString(message: "Celular:");
      sameKeys = checklist.any((element) => element["chave"] == newKey);
      positiveKey = newKey.length == 11;

      if (positiveKey) {
        // addKey();
        if (!sameKeys) {
          type -= 1;
          newKeyUser["saldo"] = balance;
          newKeyUser["usuário"] = currentUser["nome"];
          newKeyUser["tipo"] = typeKey[type];
          newKeyUser["chave"] = newKey;
          keysOneUSer.add(newKeyUser);
          checklist.add(newKeyUser);

          print('\nNova chave cadastrada! :)');
          print('Tipo de chave: ${newKeyUser["tipo"]}\n'
              'Chave: ${newKeyUser["chave"]}\n');
        } else {
          print(
              '\n     <<Chave, já cadastrada!>>\nDigite um número de celular diferente.');
        }
      } else {
        print('\nChave inválida!\nDigite um número de celular válido!');
      }
    }
  }
}

void cfpCnpjVerification() {
  bool positiveKey = false;

  while (positiveKey == false) {
    sameKeys = true;
    while (sameKeys) {
      newKey = readString(message: "CPF/CNPJ:");
      sameKeys = checklist.any((element) => element["chave"] == newKey);
      positiveKey = newKey.length == 11 || newKey.length == 14;

      if (positiveKey) {
        if (!sameKeys) {
          type -= 1;
          newKeyUser["saldo"] = balance;
          newKeyUser["usuário"] = currentUser["nome"];
          newKeyUser["tipo"] = typeKey[type];
          newKeyUser["chave"] = newKey;
          keysOneUSer.add(newKeyUser);
          checklist.add(newKeyUser);

          print('\nNova chave cadastrada! :)');
          print('Tipo de chave: ${newKeyUser["tipo"]}\n'
              'Chave: ${newKeyUser["chave"]}\n');
        } else {
          print(
              '\n     <<Chave, já cadastrada!>>\nDigite uma chave ${typeKey[type]} diferente.');
        }
      } else {
        print('\nChave inválida!\nDigite um número de CPF/CNPJ válido!');
      }
    }
  }
}
