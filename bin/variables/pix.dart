List<Map<String, dynamic>> checklist = []; //todos os dados para verificações
List<Map<String, dynamic>> keysOneUSer = []; //todas as chaves, mesmo usuário
Map<String, dynamic> myKeys = {}; //Mapa com todas as chaves e todos os usuários
Map<String, dynamic> newKeyUser = {}; //nova chave de um usuário
List<String> typeKey = [
  "CPF/CNPJ",
  "Celular",
  "E-mail",
  "Aleatória"
]; //tipos de chaves 