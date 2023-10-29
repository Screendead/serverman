enum DropletStatus {
  fresh,
  active,
  off,
  archive;

  static DropletStatus fromString(String status) {
    switch (status) {
      case 'new':
        return fresh;
      case 'active':
        return active;
      case 'off':
        return off;
      case 'archive':
        return archive;
      default:
        throw Exception('Unknown DropletStatus: $status');
    }
  }

  @override
  String toString() {
    switch (this) {
      case DropletStatus.fresh:
        return 'new';
      case DropletStatus.active:
        return 'active';
      case DropletStatus.off:
        return 'off';
      case DropletStatus.archive:
        return 'archive';
    }
  }
}
