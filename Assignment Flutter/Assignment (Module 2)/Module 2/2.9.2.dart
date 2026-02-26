import 'dart:io';
import 'package:qr_terminal/qr_terminal.dart' as QrTerminal;

void main() {
  stdout.write("Enter text: ");
  String data = stdin.readLineSync()!;

  print("\nQR Code:\n");

  QrTerminal.generate(data);
}
