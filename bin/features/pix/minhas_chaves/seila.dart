import '../../../variables/users.dart';
import 'register_new_key.dart';

List<Map<String, dynamic>> keys = [];
// void main() {  

// }
void addKey() {
  
  final key = {
    "nome": currentUser["nome"],   //"Nome do usuário atual",
    "key": newKey      //"Chave que ele digitou"
  };   
  
  if (keys.any((item) => item["key"] == "Chave que ele digitou" )) {
    print("N pode adicionar");
  } else {
    print("Adicionada");
    keys.add(key);
  }  
}
List<Map<String, dynamic>> minhasChaves() {
  return keys.where((item) => item['usuário'] == currentUser["nome"]).toList();
// List<Map<String, dynamic>> minhasChaves() {
//   return keys.where((item) => item['nome'] == "Nome do usuário atual").toList();
// }
}


List<Map<String, dynamic>> keys1 = [];
void addKey1() {
  
  final key = {
    "nome": "Nome do usuário atual",
    "cpf": "Cpf do usuário atual",
    "key": "Chave que ele digitou",
  }; 
  
  
  if (keys.any((item) => item["key"] == "Chave que ele digitou" )) {
    print("N pode adicionar");
  } else {
    print("Adicionada");
    keys.add(key);
  }
  
}
List<Map<String, dynamic>> minhasChaves1() {
  return keys.where((item) => item['nome'] == "Nome do usuário atual").toList();
}
Map<String, dynamic> getInfoParaTransferir() {
  String cpf = "";
  return keys.firstWhere((item) => item["cpf"] == cpf);
}

void main() {  
 final user = getInfoByChave("Uma chave pix valida aqui");
  
 print(user['nome']);
}

Map<String, dynamic> getInfoByChave(String chavePix) {
  return keys.firstWhere((item) => item["key"] == chavePix);
}