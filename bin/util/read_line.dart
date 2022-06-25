import 'dart:io';

String readString({String? message}) {
  if (message != null) {
    print(message);
  }
  String value = stdin.readLineSync() ?? "";
  return value;
}

double readDouble({String? message}) {
  if (message != null) {
    print(message);
  }
  String value = stdin.readLineSync() ?? "0";
  double number = double.tryParse(value) ?? 0;
  return number;
}

int readInt({String? message}) {
  if (message != null) {
    print(message);
  }
  String value = stdin.readLineSync() ?? "0";
  int number = int.tryParse(value) ?? 0;
  return number;
}
