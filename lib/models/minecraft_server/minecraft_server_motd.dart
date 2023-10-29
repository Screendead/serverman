import 'package:flutter/material.dart';

@immutable
class MinecraftServerMotd {
  final String raw;
  final String clean;
  final String html;

  const MinecraftServerMotd({
    required this.raw,
    required this.clean,
    required this.html,
  });

  factory MinecraftServerMotd.fromJson(Map<String, dynamic> json) {
    return MinecraftServerMotd(
      raw: json['raw'] as String,
      clean: json['clean'] as String,
      html: json['html'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'raw': raw,
      'clean': clean,
      'html': html,
    };
  }
}
