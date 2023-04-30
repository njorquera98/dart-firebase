import 'dart:io';
import 'package:excel/excel.dart';

void main(List<String> arguments) async {
  var file = 'tiros.xlsx';  
  var bytes = File(file).readAsBytesSync();
  var excel = Excel.decodeBytes(bytes);
  
  var sheet = excel['Hoja1'];
  var cell = sheet.cell(CellIndex.indexByString("B5"));
  
  if (cell.value == null) {
    print("La celda B5 está vacía.");
  } else {
    print("El valor de la celda B5 es: '${cell.value}'");
  }
}
