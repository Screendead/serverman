import 'dart:async';

import 'package:serverman/helpers/get_droplet_status.dart';
import 'package:serverman/models/droplet/droplet.dart';

class DropletService {
  DropletService(this.id) {
    getDropletStatus(id).then((Droplet value) {
      droplet = value;
    });
  }

  final String id;
  Droplet? _droplet;
  final StreamController<Droplet?> _dropletController =
      StreamController<Droplet?>.broadcast();

  Stream<Droplet?> get dropletStream => _dropletController.stream;

  set droplet(Droplet? value) {
    _dropletController.add(value);
    _droplet = value;
  }

  Droplet? get droplet => _droplet;

  void dispose() {
    _dropletController.close();
  }
}
