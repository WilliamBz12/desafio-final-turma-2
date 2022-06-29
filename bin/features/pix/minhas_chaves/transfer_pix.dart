import '../../../util/read.dart';
import '../../../variables/caluladora_do_saldo.dart';
import '../../../variables/users.dart';
import '../variaveis/checklist.dart';
import '../variaveis/my_keys.dart';
import '../variaveis/type_keys.dart';
import 'pix_area.dart';
import 'register_new_key.dart';

late String keyTransfer;
late Map<String, dynamic> findUser;
late Map<String, dynamic> findUSerOne;

void transferPix() {
  int counter = 1;
  int option = 0;
  int type = 0;
  while (type < 1 || type > typeKey.length) {
    print('Qual tipo de chave pix receberá a transferência?');
    for (var element in typeKey) {
      print('${counter++} - $element');
    }
    type = readInt(message: 'Tipo de chave:');

    if (type > 0 && option <= typeKey.length) {
      transferPositive();
    } else {
      print('\nOpção inválida!');
    }
  }
  do {
    option = readInt(message: '[1] Voltar ao menu pix');
  } while (option != 1);
  pixMenuTwo();
}

void transferPositive() {
  keyTransfer = readString(message: 'Chave:');

  bool positiveTransfer = checklist.any((element) =>
      element["chave"] == keyTransfer && element["tipo"] == typeKey[type]);

  if (positiveTransfer) {
    findUser =
        checklist.firstWhere((element) => element["chave"] == keyTransfer);

    findUSerOne =
        users.firstWhere((element) => element["nome"] == findUser["usuário"]);

    print('Saldo ${findUser["usuário"]}: ${findUser["saldo"]}'); //beneficiado
    print(
        'Recebedor: ${findUser["usuário"]} ${findUSerOne["sobrenome"]}'); //beneficiado

    print('');
    for (var element in myKeys[currentUser["nome"]]) {
      print('Saldo ${element["usuário"]}: ${element["saldo"]}'); //pagador
    }
    print('');

    valueTransfer = readDouble(message: 'Valor da transferência:');

    if (valueTransfer <= findUser["saldo"]) {
      findUser["saldo"] += valueTransfer; // adição no saldo do beneficiado
      for (var element in myKeys[currentUser["nome"]]) {
        element["saldo"] -= valueTransfer; //subtração no saldo do pagador
      }

      print('Saldo recebedor ${findUser["saldo"]}'); //beneficiado
      for (var element in myKeys[currentUser["nome"]]) {
        print('Saldo ${element["usuário"]}: ${element["saldo"]}'); //pagador
      }
    } else {
      print('Saldo insuficiente!');
    }
  } else {
    print('Chave inexistente!\n');
  }
}
