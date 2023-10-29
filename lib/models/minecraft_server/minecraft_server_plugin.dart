import 'package:flutter/material.dart';

@immutable
class MinecraftServerPlugin {
  final String name;
  final String? version;

  const MinecraftServerPlugin({
    required this.name,
    required this.version,
  });

  factory MinecraftServerPlugin.fromJson(Map<String, dynamic> json) {
    return MinecraftServerPlugin(
      name: json['name'] as String,
      version: json['version'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'version': version,
    };
  }
}
