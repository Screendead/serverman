import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:serverman/models/droplet_feature.dart';
import 'package:serverman/models/droplet_status.dart';

@immutable
class Droplet {
  const Droplet({
    required this.id,
    required this.name,
    required this.ip,
    required this.memory,
    required this.vcpus,
    required this.disk,
    required this.status,
    required this.createdAt,
    required this.features,
  });

  final int id;
  final String name;
  final String ip;
  final int memory;
  final int vcpus;
  final int disk;
  final DropletStatus status;
  final String createdAt;
  final List<DropletFeature> features;

  factory Droplet.fromJson(Map<String, dynamic> json) {
    return Droplet(
      name: json['name'] as String,
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
      'name': name,
      'memory': memory,
      'vcpus': vcpus,
      'disk': disk,
      'status': status.toString(),
      'created_at': createdAt,
      'features': features.map((DropletFeature e) => e.toString()).toList(),
    };
  }
}
