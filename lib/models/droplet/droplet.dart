import 'package:flutter/material.dart';
import 'package:serverman/models/droplet/droplet_backup_window.dart';
import 'package:serverman/models/droplet/droplet_feature.dart';
import 'package:serverman/models/droplet/droplet_image.dart';
import 'package:serverman/models/droplet/droplet_networks.dart';
import 'package:serverman/models/droplet/droplet_region.dart';
import 'package:serverman/models/droplet/droplet_size.dart';
import 'package:serverman/models/droplet/droplet_status.dart';

@immutable
class Droplet {
  final int id;
  final String name;
  final int memory;
  final int vcpus;
  final int disk;
  final bool locked;
  final DropletStatus status;
  final DateTime createdAt;
  final List<DropletFeature> features;
  final List<int> backupIds;
  final DropletBackupWindow? nextBackupWindow;
  final List<int> snapshotIds;
  final DropletImage image;
  final List<int> volumeIds;
  final DropletSize size;
  final String sizeSlug;
  final DropletNetworks networks;
  final DropletRegion region;
  final List<String> tags;
  final String vpcUuid;

  const Droplet({
    required this.id,
    required this.name,
    required this.memory,
    required this.vcpus,
    required this.disk,
    required this.locked,
    required this.status,
    required this.createdAt,
    required this.features,
    required this.backupIds,
    required this.nextBackupWindow,
    required this.snapshotIds,
    required this.image,
    required this.volumeIds,
    required this.size,
    required this.sizeSlug,
    required this.networks,
    required this.region,
    required this.tags,
    required this.vpcUuid,
  });

  factory Droplet.fromJson(Map<String, dynamic> json) {
    return Droplet(
      id: json['id'] as int,
      name: json['name'] as String,
      memory: json['memory'] as int,
      vcpus: json['vcpus'] as int,
      disk: json['disk'] as int,
      locked: json['locked'] as bool,
      status: DropletStatus.fromString(json['status'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      features: (json['features'] as List<dynamic>)
          .map((dynamic e) => DropletFeature.fromString(e as String))
          .toList(),
      backupIds: (json['backup_ids'] as List<dynamic>)
          .map((dynamic e) => e as int)
          .toList(),
      nextBackupWindow: json['next_backup_window'] == null
          ? null
          : DropletBackupWindow.fromJson(
              json['next_backup_window'] as Map<String, dynamic>,
            ),
      snapshotIds: (json['snapshot_ids'] as List<dynamic>)
          .map((dynamic e) => e as int)
          .toList(),
      image: DropletImage.fromJson(
        json['image'] as Map<String, dynamic>,
      ),
      volumeIds: (json['volume_ids'] as List<dynamic>)
          .map((dynamic e) => e as int)
          .toList(),
      size: DropletSize.fromJson(
        json['size'] as Map<String, dynamic>,
      ),
      sizeSlug: json['size_slug'] as String,
      networks: DropletNetworks.fromJson(
        json['networks'] as Map<String, dynamic>,
      ),
      region: DropletRegion.fromJson(
        json['region'] as Map<String, dynamic>,
      ),
      tags: (json['tags'] as List<dynamic>)
          .map((dynamic e) => e as String)
          .toList(),
      vpcUuid: json['vpc_uuid'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'memory': memory,
      'vcpus': vcpus,
      'disk': disk,
      'locked': locked,
      'status': status,
      'created_at': createdAt.toIso8601String(),
      'features': features.map((DropletFeature e) => e.toString()).toList(),
      'backup_ids': backupIds,
      'next_backup_window': nextBackupWindow?.toJson(),
      'snapshot_ids': snapshotIds,
      'image': image.toJson(),
      'volume_ids': volumeIds,
      'size': size.toJson(),
      'size_slug': sizeSlug,
      'networks': networks.toJson(),
      'region': region.toJson(),
      'tags': tags,
      'vpc_uuid': vpcUuid,
    };
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        memory.hashCode ^
        vcpus.hashCode ^
        disk.hashCode ^
        locked.hashCode ^
        status.hashCode ^
        createdAt.hashCode ^
        features.hashCode ^
        backupIds.hashCode ^
        nextBackupWindow.hashCode ^
        snapshotIds.hashCode ^
        image.hashCode ^
        volumeIds.hashCode ^
        size.hashCode ^
        sizeSlug.hashCode ^
        networks.hashCode ^
        region.hashCode ^
        tags.hashCode ^
        vpcUuid.hashCode;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Droplet &&
            runtimeType == other.runtimeType &&
            id == other.id &&
            name == other.name &&
            memory == other.memory &&
            vcpus == other.vcpus &&
            disk == other.disk &&
            locked == other.locked &&
            status == other.status &&
            createdAt == other.createdAt &&
            features == other.features &&
            backupIds == other.backupIds &&
            nextBackupWindow == other.nextBackupWindow &&
            snapshotIds == other.snapshotIds &&
            image == other.image &&
            volumeIds == other.volumeIds &&
            size == other.size &&
            sizeSlug == other.sizeSlug &&
            networks == other.networks &&
            region == other.region &&
            tags == other.tags &&
            vpcUuid == other.vpcUuid;
  }
}
