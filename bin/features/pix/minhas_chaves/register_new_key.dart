import '../../../util/read.dart';
import '../variaveis/keys_one_user.dart';
import '../variaveis/my_keys.dart';
import '../variaveis/new_key.dart';
import '../variaveis/type_keys.dart';
import 'keys_verification.dart';
import '../../../variables/users.dart';
import 'pix_area.dart';

late String newKey;
late int type;

void registerNewKey() {
  newKeyUser = {};
  int counter = 1;
  int option = 0;

  print('${currentUser["nome"]}, escolha o tipo para a nova chave pix.');
  for (var element in typeKey) {
    print('${counter++} - $element');
  }
  type = readInt(message: "Tipo de chave:");
  if (type > 0 && type <= typeKey.length) {
    keysVerification();
  } else {
    print('\nOpção inválida! :(\n');
  }

  if (myKeys[currentUser["nome"]] == null) {
    myKeys[currentUser["nome"]] = keysOneUSer;
  } else {
    myKeys[currentUser["nome"]] += keysOneUSer;
  }
  
  keysOneUSer = [];
  do {
    option = readInt(message: '[1] Voltar à área pix');
  } while (option != 1);
  pixMenuTwo();
}
