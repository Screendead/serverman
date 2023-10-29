import 'dart:async';

import 'package:serverman/models/droplet.dart';

class DropletService {
  final Droplet? _droplet;
  final StreamController<Droplet?> _dropletController =
      StreamController<Droplet?>.broadcast();

  DropletService(this._droplet);

  Stream<Droplet?> get dropletStream => _dropletController.stream;

  void updateDroplet() {
    _dropletController.add(_droplet);
  }

  void dispose() {
    _dropletController.close();
  }
}
