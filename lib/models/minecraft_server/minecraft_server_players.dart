import 'package:flutter/material.dart';
import 'package:serverman/models/minecraft_server/minecraft_server_player.dart';

@immutable
class MinecraftServerPlayers {
  final int online;
  final int max;
  final List<MinecraftServerPlayer>? list;

  const MinecraftServerPlayers({
    required this.online,
    required this.max,
    required this.list,
  });

  factory MinecraftServerPlayers.fromJson(Map<String, dynamic> json) {
    return MinecraftServerPlayers(
      online: json['online'] as int,
      max: json['max'] as int,
      list: json['list'] == null
          ? null
          : (json['list'] as List<dynamic>)
              .map(
                (dynamic e) => MinecraftServerPlayer.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'online': online,
      'max': max,
      'list': list?.map((MinecraftServerPlayer e) => e.toJson()).toList(),
    };
  }
}
