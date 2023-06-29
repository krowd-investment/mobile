import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:krowd_invesment_footer/modules/authentication/auth_controller.dart';

class UserService {
  static Map<String, String>? generalHeaders;

  static Future<bool> registerUser(Map body) async {
    const url = 'https://funfund.onrender.com/api/user';
    final uri = Uri.parse(url);
    final response = await http.put(
      uri,
      headers: generalHeaders,
      body: jsonEncode(body),
    );
    return response.statusCode == 200;
  }

  static Future<http.Response> authenticateBackEnd(
      var firebaseIdToken) async {
    const url =
        'https://funfund.onrender.com/api/authenticate';
    final headers = {'Authorization': 'Bearer ${AuthController.token}'};

    generalHeaders = headers;
    final uri = Uri.parse(url);
    return await http.get(uri, headers: headers);
  }
}
