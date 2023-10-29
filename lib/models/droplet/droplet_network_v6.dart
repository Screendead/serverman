import 'package:flutter/material.dart';

@immutable
class DropletNetworkV6 {
  final String ipAddress;
  final int netmask;
  final String gateway;
  final String type;

  const DropletNetworkV6({
    required this.ipAddress,
    required this.netmask,
    required this.gateway,
    required this.type,
  });

  factory DropletNetworkV6.fromJson(Map<String, dynamic> json) {
    return DropletNetworkV6(
      ipAddress: json['ip_address'] as String,
      netmask: json['netmask'] as int,
      gateway: json['gateway'] as String,
      type: json['type'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'ip_address': ipAddress,
      'netmask': netmask,
      'gateway': gateway,
      'type': type,
    };
  }
}
