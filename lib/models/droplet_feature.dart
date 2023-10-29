enum DropletFeature {
  privateNetworking,
  dropletAgent,
  ipv6,
  monitoring;

  static DropletFeature fromString(String feature) {
    switch (feature) {
      case 'private_networking':
        return DropletFeature.privateNetworking;
      case 'droplet_agent':
        return DropletFeature.dropletAgent;
      case 'ipv6':
        return DropletFeature.ipv6;
      case 'monitoring':
        return DropletFeature.monitoring;
      default:
        throw Exception('Unknown feature: $feature');
    }
  }

  @override
  String toString() {
    switch (this) {
      case DropletFeature.privateNetworking:
        return 'private_networking';
      case DropletFeature.dropletAgent:
        return 'droplet_agent';
      case DropletFeature.ipv6:
        return 'ipv6';
      case DropletFeature.monitoring:
        return 'monitoring';
    }
  }
}
