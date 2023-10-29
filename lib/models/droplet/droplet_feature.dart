/*
- backups
- droplet_agent
- install_agent
- image_transfer
- ipv6
- metadata
- private_networking
- storage
*/

enum DropletFeature {
  backups('backups'),
  dropletAgent('droplet_agent'),
  installAgent('install_agent'),
  imageTransfer('image_transfer'),
  ipv6('ipv6'),
  metadata('metadata'),
  privateNetworking('private_networking'),
  storage('storage');

  final String value;

  const DropletFeature(this.value);

  static DropletFeature fromString(String value) {
    return DropletFeature.values.firstWhere(
      (DropletFeature element) => element.value == value,
    );
  }

  @override
  String toString() => value;
}
