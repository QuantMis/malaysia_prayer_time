import 'dart:convert';
import 'dart:io';

Future<List<dynamic>> readJsonFile(String filePath, String key) async {
  var input = await File(filePath).readAsString();
  var map = jsonDecode(input);
  return map[key];
}
