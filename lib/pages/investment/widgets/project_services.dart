import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:krowd_invesment_footer/models/project.dart';
import 'package:krowd_invesment_footer/pages/login/widgets/user_services.dart';

class ProjectServices {
  static Future<http.Response> getAllProjects() async {
    const url = '${UserService.apiROOT}/projects/getAll';
    final headers = UserService.getHeaders;
    final uri = Uri.parse(url);
    final response = await http.get(uri, headers: headers);
    log(response.body);
    return response;
  }


  static Future<List<Project>> fetchProjects() async {
    const String url = '${UserService.apiROOT}/projects/getAll';
    final headers = UserService.putHeaders;
    final uri = Uri.parse(url);
    final response = await http.get(uri, headers: headers);
    debugPrint("Project ${response.body}");
    debugPrint("Status ${response.statusCode}");
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);

      return jsonData.map((data) => Project.fromJson(data)).toList();
    } else {
      throw Exception('Failed to fetch projects');
    }
  }
}
