import 'package:flutter/material.dart';
import 'package:serverman/models/droplet/droplet_size_slug.dart';

@immutable
class DropletSize {
  final DropletSizeSlug slug;
  final int memory;
  final int vcpus;
  final int disk;
  final double transfer;
  final double priceMonthly;
  final double priceHourly;
  final List<String> regions;
  final bool available;
  final String description;

  const DropletSize({
    required this.slug,
    required this.memory,
    required this.vcpus,
    required this.disk,
    required this.transfer,
    required this.priceMonthly,
    required this.priceHourly,
    required this.regions,
    required this.available,
    required this.description,
  });

  factory DropletSize.fromJson(Map<String, dynamic> json) {
    return DropletSize(
      slug: DropletSizeSlug.fromString(json['slug'] as String),
      memory: json['memory'] as int,
      vcpus: json['vcpus'] as int,
      disk: json['disk'] as int,
      transfer: json['transfer'] as double,
      priceMonthly: json['price_monthly'] as double,
      priceHourly: json['price_hourly'] as double,
      regions: (json['regions'] as List<dynamic>).cast<String>(),
      available: json['available'] as bool,
      description: json['description'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'slug': slug.toString(),
      'memory': memory,
      'vcpus': vcpus,
      'disk': disk,
      'transfer': transfer,
      'price_monthly': priceMonthly,
      'price_hourly': priceHourly,
      'regions': regions,
      'available': available,
      'description': description,
    };
  }
}
