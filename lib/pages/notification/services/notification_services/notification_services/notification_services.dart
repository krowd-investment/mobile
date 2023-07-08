import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:krowd_invesment_footer/modules/authentication/auth_controller.dart';

class NotificationServices{
  static Map<String, String>? generalHeaders;
  static Rx<Response> userInfo = Rx<Response>(const Response());

  static const String baseUrl = 'https://funfund.onrender.com/api';

}