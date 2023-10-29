import 'package:flutter/material.dart';

@immutable
class MinecraftServerSrvRecord {
  final String host;
  final int port;

  const MinecraftServerSrvRecord({
    required this.host,
    required this.port,
  });

  factory MinecraftServerSrvRecord.fromJson(Map<String, dynamic> json) {
    return MinecraftServerSrvRecord(
      host: json['host'] as String,
      port: json['port'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'host': host,
      'port': port,
    };
  }
}
