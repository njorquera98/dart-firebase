import 'dart:io';
import 'package:excel/excel.dart';

void main(List<String> arguments) async {
  // Código de ejemplo para trabajar con la librería de Excel
  var excel = Excel.createExcel();
  var sheet = excel['Sheet1'];
  sheet.appendRow(['Nombre', 'Edad']);
  sheet.appendRow(['Juan', '30']);
  sheet.appendRow(['María', '25']);
  var bytes = await excel.encode();
  // Guardar el archivo de Excel en disco
  final file = File('ejemplo.xlsx');
  await file.writeAsBytes(bytes!);
  print('Archivo guardado con éxito en ${file.path}');
}
