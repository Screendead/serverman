import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:serverman/models/droplet/droplet.dart';

Future<Droplet> getDroplet(String dropletId) async {
  final String apiKey = dotenv.env['DIGITALOCEAN_API_KEY'] as String;
  final String url = 'https://api.digitalocean.com/v2/droplets/$dropletId';

  final http.Response response = await http.get(
    Uri.parse(url),
    headers: <String, String>{
      'Authorization': 'Bearer $apiKey',
    },
  );

  if (response.statusCode != 200) {
    throw Exception(
        'Failed to load droplet status: ERROR ${response.statusCode}');
  }

  final Map<String, dynamic> data =
      jsonDecode(response.body) as Map<String, dynamic>;
  Clipboard.setData(ClipboardData(text: response.body));
  return Droplet.fromJson(data['droplet'] as Map<String, dynamic>);
}
