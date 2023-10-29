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

  @override
  int get hashCode {
    return host.hashCode ^ port.hashCode;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is MinecraftServerSrvRecord &&
            host == other.host &&
            port == other.port;
  }
}
