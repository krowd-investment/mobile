import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import '../../../modules/authentication/auth_controller.dart';

class WalletService {
  static Map<String, String>? generalHeaders;
  static const String baseUrl = 'https://funfund.onrender.com/api';

  static Future<Map<String, dynamic>?> fetchGeneralWallet() async {
    const url = '$baseUrl/user/general-wallet';
    final uri = Uri.parse(url);

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${AuthController.token}'
    };

    try {
      final response = await http.get(uri, headers: headers);

      if (response.statusCode == 200) {
        final generalWallet = jsonDecode(response.body) as Map<String, dynamic>;
        return generalWallet;
      } else {
        log('Failed to fetch general wallet with status code: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      log('Error fetching general wallet: $e');
      return null;
    }
  }

  static Future<Map<String, dynamic>?> fetchCollectionWallet() async {
    const url = '$baseUrl/user/collection-wallet';
    final uri = Uri.parse(url);

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${AuthController.token}'
    };

    try {
      final response = await http.get(uri, headers: headers);

      if (response.statusCode == 200) {
        final collectionWallet =
            jsonDecode(response.body) as Map<String, dynamic>;
        return collectionWallet;
      } else {
        log('Failed to fetch collection wallet with status code: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      log('Error fetching collection wallet: $e');
      return null;
    }
  }
}
