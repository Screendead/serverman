import 'package:flutter/material.dart';

@immutable
class MinecraftServerPlayer {
  final String uuid;
  final String nameRaw;
  final String nameClean;
  final String nameHtml;

  const MinecraftServerPlayer({
    required this.uuid,
    required this.nameRaw,
    required this.nameClean,
    required this.nameHtml,
  });

  factory MinecraftServerPlayer.fromJson(Map<String, dynamic> json) {
    return MinecraftServerPlayer(
      uuid: json['uuid'] as String,
      nameRaw: json['name_raw'] as String,
      nameClean: json['name_clean'] as String,
      nameHtml: json['name_html'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'uuid': uuid,
      'name_raw': nameRaw,
      'name_clean': nameClean,
      'name_html': nameHtml,
    };
  }
}
