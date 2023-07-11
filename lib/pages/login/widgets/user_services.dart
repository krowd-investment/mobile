import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:krowd_invesment_footer/modules/authentication/auth_controller.dart';

class UserService {
  static Map<String, String>? generalHeaders;

  static Future<bool> registerUser(Map body) async {
    const url = 'https://funfund.onrender.com/api/user';
    final uri = Uri.parse(url);

    // final headers = {'Content-Type': 'application/json','Authorization': 'Bearer ${AuthController.token}'};

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${AuthController.token}'
    };

    final response = await http.put(
      uri,
      headers: headers,
      body: jsonEncode(body),
    );
    log("Register user: ${response.body}");
    return response.statusCode == 200;
  }

  static Future<http.Response> authenticateBackEnd(var firebaseIdToken) async {
    const url = 'https://funfund.onrender.com/api/authenticate';
    final headers = {'Authorization': 'Bearer ${AuthController.token}'};
    generalHeaders = headers;
    final uri = Uri.parse(url);
    return await http.get(uri, headers: headers);
  }

  static Future<http.Response> getUserInfo() async {
    const url = 'https://funfund.onrender.com/api/user';
    final headers = {'Authorization': 'Bearer ${AuthController.token}'};
    final uri = Uri.parse(url);
    final response = await http.get(uri, headers: headers);
    log(response.body);
    return response;
  }
}
