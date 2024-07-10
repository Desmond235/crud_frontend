import 'dart:convert';

import 'package:http/http.dart' as http;

class Http {
  static String url = "http://10.0.2.2:2000/api/";
  static postProduct(Map pData) async {
    try {
      final response = await http.post(
        Uri.parse("${url}add-product"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(pData),
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
