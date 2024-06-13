import 'dart:convert';

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

  static Future<Map<dynamic, dynamic>> post(
      {required String datestart,
      required String dateend,
      required String zone}) async {
    try {
      String url =
          "https://www.e-solat.gov.my/index.php?r=esolatApi/takwimsolat&zone=$zone&period=duration";
      Uri uri = Uri.parse(url);
      Map body = {"datestart": datestart, "dateend": dateend};
      Map<String, String> headers = {
        "Content-Type": "application/x-www-form-urlencoded"
      };
      final response = await http.post(uri, body: body, headers: headers);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception("Failed to load data");
      }
    } catch (e) {
      throw Exception('HttpService post method error $e');
    }
  }
}
