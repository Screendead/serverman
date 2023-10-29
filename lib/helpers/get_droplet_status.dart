import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:serverman/models/droplet/droplet.dart';

/// Get Droplet Status by ID (from DigitalOcean API via HTTP GET / BEARER Auth)
/// Includes: power status, ip address, size string (e.g. s-1vcpu-1gb), region, image, and more
Future<Droplet> getDropletStatus(String dropletId) async {
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
  return Droplet.fromJson(data['droplet'] as Map<String, dynamic>);
}
