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

  @override
  int get hashCode {
    return raw.hashCode ^ clean.hashCode ^ html.hashCode;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is MinecraftServerMotd &&
            raw == other.raw &&
            clean == other.clean &&
            html == other.html;
  }
}
