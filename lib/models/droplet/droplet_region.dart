import 'package:flutter/material.dart';
import 'package:serverman/models/droplet/droplet_feature.dart';

/*
region:
      type: object
      properties:
        name:
          type: string
          description: >-
            The display name of the region.  This will be a full name that is
            used in the control panel and other interfaces.
          example: New York 3
        slug:
          type: string
          description: >-
            A human-readable string that is used as a unique identifier for each
            region.
          example: nyc3
        features:
          items:
            type: string
          description: >-
            This attribute is set to an array which contains features available
            in this region
          example:
            - private_networking
            - backups
            - ipv6
            - metadata
            - install_agent
            - storage
            - image_transfer
        available:
          type: boolean
          description: >-
            This is a boolean value that represents whether new Droplets can be
            created in this region.
          example: true
        sizes:
          items:
            type: string
          description: >-
            This attribute is set to an array which contains the identifying
            slugs for the sizes available in this region.
          example:
            - s-1vcpu-1gb
            - s-1vcpu-2gb
            - s-1vcpu-3gb
            - s-2vcpu-2gb
            - s-3vcpu-1gb
            - s-2vcpu-4gb
            - s-4vcpu-8gb
            - s-6vcpu-16gb
            - s-8vcpu-32gb
            - s-12vcpu-48gb
            - s-16vcpu-64gb
            - s-20vcpu-96gb
            - s-24vcpu-128gb
            - s-32vcpu-192g
      required:
        - available
        - features
        - name
        - sizes
        - slug
*/

@immutable
class DropletRegion {
  final String name;
  final String slug;
  final List<DropletFeature> features;
  final bool available;
  final List<String> sizes;

  const DropletRegion({
    required this.name,
    required this.slug,
    required this.features,
    required this.available,
    required this.sizes,
  });

  factory DropletRegion.fromJson(Map<String, dynamic> json) {
    return DropletRegion(
      name: json['name'] as String,
      slug: json['slug'] as String,
      features: (json['features'] as List<dynamic>)
          .map((dynamic e) => DropletFeature.fromString(e as String))
          .toList(),
      available: json['available'] as bool,
      sizes: (json['sizes'] as List<dynamic>)
          .map((dynamic e) => e as String)
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'slug': slug,
      'features': features.map((DropletFeature e) => e.toString()).toList(),
      'available': available,
      'sizes': sizes,
    };
  }
}
