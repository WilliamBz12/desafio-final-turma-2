import '../../util/read.dart';
import '../../variables/caluladora_do_saldo.dart';
import '../../variables/pix.dart';
import '../../variables/users.dart';
import 'pix_area.dart';
import 'register_new_key.dart';

late double valueTransfer;
late String keyTransfer;
late Map<String, dynamic> searchUSer;
late Map<String, dynamic> searchLastName;
late Map<String, dynamic> searchBalance;

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
    print('Tipo: ${typeKey[type]}\nChave: $keyTransfer\n'
        'Nome: ${searchLastName["nome"]} ${searchLastName["sobrenome"]}\n'); //beneficiado

    valueTransfer = readDouble(message: 'Valor da transferência:');

    if (valueTransfer <= searchUSer["saldo"]) {
      searchBalance[searchUSer["usuário"]] +=
          valueTransfer; // adição no saldo do beneficiado

      balanceUSer[currentUser["nome"]] -=
          valueTransfer; //subtração no saldo do pagador

      print('\nTransferência concluída!');
      print(
          'Saldo do beneficiado: ${searchBalance[searchUSer["usuário"]]}'); //beneficiado

      print('Meu saldo: ${balanceUSer[currentUser["nome"]]}\n'); //pagador

    } else {
      print('Saldo insuficiente!');
    }
  } else {
    print('Chave inexistente!\n');
  }
}

void search() {
  searchUSer =
      checklist.firstWhere((element) => element["chave"] == keyTransfer);

  searchLastName =
      users.firstWhere((element) => element["nome"] == searchUSer["usuário"]);

  searchBalance = users.firstWhere(
      (element) => element[searchUSer["usuário"]] == searchUSer["saldo"]);
}
