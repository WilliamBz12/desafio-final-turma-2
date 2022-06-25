import 'dart:io';
import '../../util/clean.dart';
import '../../variables/caluladora_do_saldo.dart';
import '../../variables/usuarios_pre_definidos.dart';
import '../../util/read_line.dart';

void empresta(double value, int time, double tax, double salary) {
  tax = (tax / 100);
  salary = (salary * 0.3);
  double emprestimoPedido = value;

  double fees = value * (tax * time);
  value += fees;
  int parcelas = time * 12;
  double installmentValue = value / parcelas;
  clean();
  if (installmentValue <= salary && bills[1]["password"] == password) {
    //esse biils e uma list com maps de dados do usuario
    print("Empréstimo_aceito");
    loan.add({
      "emprestimo_pedido": emprestimoPedido,
      "valor_a_pagar": value.toStringAsFixed(2),
      "valor_do_juros": fees.toStringAsFixed(2),
      "quantidade_de_parcelas": parcelas,
      "tempo_em_anos": time,
      "valor_de_cada_parcela": installmentValue.toStringAsFixed(2),
      "taxa_de_juros_anual": tax * 100
    });
    Map<String, dynamic> valor = {
    "valor": emprestimoPedido,
  };
  money1.add(valor);
  } else {
    print("Empréstimo Recusado");
    loanError.add({
      "emprestimo_pedido": emprestimoPedido,
      "valor_a_pagar": value,
      "valor_do_juros": fees,
      "quantidade_de_parcelas": parcelas,
      "tempo_em_anos": time,
      "valor_de_cada_parcela": installmentValue,
      "taxa_de_juros_anual": tax * 100
    });
  }
}

void informations() {
  late Map<String, dynamic> i; //??????????????????????

  double value = readDouble(message: "Qual o valor do empréstimo? ");
  int time = 6;
  while (time > 5) {
    time = readInt (message: "Em quantos anos deseja paga?");
    if (time > 5) print("O tempo de pagamento se limita a 5 anos ou menos");
  }
  double salary = readDouble (message: "Qual sua renda mensal?");
  print(
      "Usuário : ${bills[1]["Nome"]}"); //esse biils e uma list com maps de dados do usuario
  password = readInt(message: "Digite sua senha:");
  empresta(value, time, 12, salary);

  
}

int password = 0;
