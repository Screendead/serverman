import 'package:flutter/material.dart';

@immutable
class MinecraftServerVersion {
  final String nameRaw;
  final String nameClean;
  final String nameHtml;
  final int protocol;

  const MinecraftServerVersion({
    required this.nameRaw,
    required this.nameClean,
    required this.nameHtml,
    required this.protocol,
  });

  factory MinecraftServerVersion.fromJson(Map<String, dynamic> json) {
    return MinecraftServerVersion(
      nameRaw: json['name_raw'] as String,
      nameClean: json['name_clean'] as String,
      nameHtml: json['name_html'] as String,
      protocol: json['protocol'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name_raw': nameRaw,
      'name_clean': nameClean,
      'name_html': nameHtml,
      'protocol': protocol,
    };
  }

  @override
  int get hashCode {
    return nameRaw.hashCode ^
        nameClean.hashCode ^
        nameHtml.hashCode ^
        protocol.hashCode;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is MinecraftServerVersion &&
            nameRaw == other.nameRaw &&
            nameClean == other.nameClean &&
            nameHtml == other.nameHtml &&
            protocol == other.protocol;
  }
}
