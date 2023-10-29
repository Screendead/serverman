import 'package:flutter/material.dart';
import 'package:serverman/models/droplet/droplet_image_type.dart';

@immutable
class DropletImage {
  final int id;
  final String name;
  final DropletImageType type;
  final String distribution;
  final String? slug;
  final bool public;
  final List<String> regions;
  final DateTime createdAt;
  final int? minDiskSize;
  final double? sizeGigabytes;
  final String description;
  final List<String>? tags;
  final String status;
  final String? errorMessage;

  const DropletImage({
    required this.id,
    required this.name,
    required this.type,
    required this.distribution,
    required this.slug,
    required this.public,
    required this.regions,
    required this.createdAt,
    required this.minDiskSize,
    required this.sizeGigabytes,
    required this.description,
    required this.tags,
    required this.status,
    required this.errorMessage,
  });

  factory DropletImage.fromJson(Map<String, dynamic> json) {
    return DropletImage(
      id: json['id'] as int,
      name: json['name'] as String,
      type: DropletImageType.fromString(json['type'] as String),
      distribution: json['distribution'] as String,
      slug: json['slug'] as String?,
      public: json['public'] as bool,
      regions: (json['regions'] as List<dynamic>).cast<String>(),
      createdAt: DateTime.parse(json['created_at'] as String),
      minDiskSize: json['min_disk_size'] as int?,
      sizeGigabytes: json['size_gigabytes'] as double?,
      description: json['description'] as String,
      tags: (json['tags'] as List<dynamic>?)?.cast<String>(),
      status: json['status'] as String,
      errorMessage: json['error_message'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'type': type.toString(),
      'distribution': distribution,
      'slug': slug,
      'public': public,
      'regions': regions,
      'created_at': createdAt.toIso8601String(),
      'min_disk_size': minDiskSize,
      'size_gigabytes': sizeGigabytes,
      'description': description,
      'tags': tags,
      'status': status,
      'error_message': errorMessage,
    };
  }
}
