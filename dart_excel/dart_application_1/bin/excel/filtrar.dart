import 'dart:io';
import 'package:excel/excel.dart';

void main(List<String> arguments) async {
    var file = 'tiros.xlsx';
    var bytes = File(file).readAsBytesSync();
    var excel = Excel.decodeBytes(bytes);
  for (var table in excel.tables.keys) {
    print("Nombre hoja: " + table);
        
    print(excel.tables[table]!.maxCols);
    print(excel.tables[table]!.maxRows);
    for (var row in excel.tables[table]!.rows) {
      // Iterar solo por las columnas 2 y 3
      print("${row[1]?.value}, ${row[2]?.value}");
    }
  }
}
