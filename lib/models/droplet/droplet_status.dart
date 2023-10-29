enum DropletStatus {
  newDroplet('new'),
  active('active'),
  off('off'),
  archive('archive');

  final String value;

  const DropletStatus(this.value);

  factory DropletStatus.fromString(String json) {
    return DropletStatus.values.firstWhere(
      (DropletStatus element) => element.value == json,
    );
  }

  @override
  String toString() {
    return value;
  }
}
