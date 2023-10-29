enum DropletImageType {
  base('base'),
  snapshot('snapshot'),
  backup('backup'),
  custom('custom'),
  admin('admin');

  final String name;

  const DropletImageType(this.name);

  static DropletImageType fromString(String value) {
    return values.firstWhere((e) => e.name == value);
  }

  @override
  String toString() {
    return name;
  }
}
