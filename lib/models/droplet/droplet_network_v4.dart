import 'package:flutter/material.dart';

@immutable
class DropletNetworkV4 {
  final String ipAddress;
  final String netmask;
  final String gateway;

  const DropletNetworkV4({
    required this.ipAddress,
    required this.netmask,
    required this.gateway,
  });

  factory DropletNetworkV4.fromJson(Map<String, dynamic> json) {
    return DropletNetworkV4(
      ipAddress: json['ip_address'] as String,
      netmask: json['netmask'] as String,
      gateway: json['gateway'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'ip_address': ipAddress,
      'netmask': netmask,
      'gateway': gateway,
    };
  }
}
