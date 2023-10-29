import 'package:flutter/material.dart';

@immutable
class MinecraftServerMod {
  final String name;
  final String version;

  const MinecraftServerMod({
    required this.name,
    required this.version,
  });

  factory MinecraftServerMod.fromJson(Map<String, dynamic> json) {
    return MinecraftServerMod(
      name: json['name'] as String,
      version: json['version'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'version': version,
    };
  }

  @override
  int get hashCode {
    return name.hashCode ^ version.hashCode;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is MinecraftServerMod &&
            name == other.name &&
            version == other.version;
  }
}
