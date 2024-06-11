import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class HttpService {
  static Future<Map<dynamic, dynamic>> get(
      {required String zone, required String period}) async {
    try {
      String url =
          "https://www.e-solat.gov.my/index.php?r=esolatApi/takwimsolat&zone=$zone&period=$period";
      Uri uri = Uri.parse(url);
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('HttpService get method error $e');
    }
  }

  static post() {}
}
