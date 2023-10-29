import 'package:flutter/material.dart';
import 'package:serverman/models/minecraft_server/minecraft_server_mod.dart';
import 'package:serverman/models/minecraft_server/minecraft_server_motd.dart';
import 'package:serverman/models/minecraft_server/minecraft_server_players.dart';
import 'package:serverman/models/minecraft_server/minecraft_server_plugin.dart';
import 'package:serverman/models/minecraft_server/minecraft_server_srv_record.dart';
import 'package:serverman/models/minecraft_server/minecraft_server_version.dart';

@immutable
class MinecraftServer {
  final bool online;
  final String host;
  final int port;
  final String? ipAddress;
  final bool eulaBlocked;
  final int retrievedAt;
  final int expiresAt;
  final MinecraftServerVersion? version;
  final MinecraftServerPlayers? players;
  final MinecraftServerMotd? motd;
  final String? icon;
  final List<MinecraftServerMod>? mods;
  final String? software;
  final List<MinecraftServerPlugin>? plugins;
  final MinecraftServerSrvRecord? srvRecord;

  const MinecraftServer({
    required this.online,
    required this.host,
    required this.port,
    required this.ipAddress,
    required this.eulaBlocked,
    required this.retrievedAt,
    required this.expiresAt,
    required this.version,
    required this.players,
    required this.motd,
    required this.icon,
    required this.mods,
    required this.software,
    required this.plugins,
    required this.srvRecord,
  });

  factory MinecraftServer.fromJson(Map<String, dynamic> json) {
    return MinecraftServer(
      online: json['online'] as bool,
      host: json['host'] as String,
      port: json['port'] as int,
      ipAddress: json['ip_address'] as String?,
      eulaBlocked: json['eula_blocked'] as bool,
      retrievedAt: json['retrieved_at'] as int,
      expiresAt: json['expires_at'] as int,
      version: json['version'] == null
          ? null
          : MinecraftServerVersion.fromJson(
              json['version'] as Map<String, dynamic>,
            ),
      players: json['players'] == null
          ? null
          : MinecraftServerPlayers.fromJson(
              json['players'] as Map<String, dynamic>,
            ),
      motd: json['motd'] == null
          ? null
          : MinecraftServerMotd.fromJson(
              json['motd'] as Map<String, dynamic>,
            ),
      icon: json['icon'] as String?,
      mods: json['mods'] == null
          ? null
          : (json['mods'] as List<dynamic>)
              .map(
                (dynamic e) => MinecraftServerMod.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
      software: json['software'] as String?,
      plugins: json['plugins'] == null
          ? null
          : (json['plugins'] as List<dynamic>)
              .map(
                (dynamic e) => MinecraftServerPlugin.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
      srvRecord: json['srv_record'] == null
          ? null
          : MinecraftServerSrvRecord.fromJson(
              json['srv_record'] as Map<String, dynamic>,
            ),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'online': online,
      'host': host,
      'port': port,
      'ip_address': ipAddress,
      'eula_blocked': eulaBlocked,
      'retrieved_at': retrievedAt,
      'expires_at': expiresAt,
      'version': version?.toJson(),
      'players': players?.toJson(),
      'motd': motd?.toJson(),
      'icon': icon,
      'mods': mods?.map((MinecraftServerMod e) => e.toJson()).toList(),
      'software': software,
      'plugins': plugins?.map((MinecraftServerPlugin e) => e.toJson()).toList(),
      'srv_record': srvRecord?.toJson(),
    };
  }
}
