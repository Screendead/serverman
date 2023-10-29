import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:serverman/models/droplet/droplet_feature.dart';
import 'package:serverman/models/droplet/droplet_status.dart';

@immutable
class Droplet {
  const Droplet({
    required this.id,
    required this.name,
    required this.sizeSlug,
    required this.memory,
    required this.vcpus,
    required this.disk,
    required this.status,
    required this.createdAt,
    required this.features,
  });

  final int id;
  final String name;
  final String sizeSlug;
  final int memory;
  final int vcpus;
  final int disk;
  final DropletStatus status;
  final String createdAt;
  final List<DropletFeature> features;

  factory Droplet.fromJson(Map<String, dynamic> json) {
    return Droplet(
      id: json['id'] as int,
      name: json['name'] as String,
      sizeSlug: json['size_slug'] as String,
      memory: json['memory'] as int,
      vcpus: json['vcpus'] as int,
      disk: json['disk'] as int,
      status: DropletStatus.fromString(json['status'] as String),
      createdAt: DateFormat('dd/MM/yyyy HH:mm:ss')
          .format(DateTime.parse(json['created_at'] as String)),
      features: (json['features'] as List<dynamic>)
          .map((dynamic e) => DropletFeature.fromString(e as String))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'size_slug': sizeSlug,
      'memory': memory,
      'vcpus': vcpus,
      'disk': disk,
      'status': status.toString(),
      'created_at': createdAt,
      'features': features.map((DropletFeature e) => e.toString()).toList(),
    };
  }
}
