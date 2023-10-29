import 'dart:convert';

import 'package:serverman/models/minecraft_server/minecraft_server.dart';
import 'package:http/http.dart' as http;

Future<MinecraftServer> getMinecraftServer(String address) async {
  final String url = 'https://api.mcstatus.io/v2/status/java/$address';

  final http.Response response = await http.get(
    Uri.parse(url),
  );

  if (response.statusCode != 200) {
    throw Exception(
        'Failed to load minecraft server status: ERROR ${response.statusCode}');
  }

  final Map<String, dynamic> data =
      jsonDecode(response.body) as Map<String, dynamic>;

  return MinecraftServer.fromJson(data);
}
