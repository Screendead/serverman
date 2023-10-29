import 'package:flutter/material.dart';
import 'package:serverman/models/droplet/droplet_network_v4.dart';
import 'package:serverman/models/droplet/droplet_network_v6.dart';

@immutable
class DropletNetworks {
  final List<DropletNetworkV4> v4;
  final List<DropletNetworkV6> v6;

  const DropletNetworks({
    required this.v4,
    required this.v6,
  });

  factory DropletNetworks.fromJson(Map<String, dynamic> json) {
    return DropletNetworks(
      v4: (json['v4'] as List<dynamic>)
          .map((dynamic e) =>
              DropletNetworkV4.fromJson(e as Map<String, dynamic>))
          .toList(),
      v6: (json['v6'] as List<dynamic>)
          .map((dynamic e) =>
              DropletNetworkV6.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'v4': v4.map((DropletNetworkV4 e) => e.toJson()).toList(),
      'v6': v6.map((DropletNetworkV6 e) => e.toJson()).toList(),
    };
  }
}
