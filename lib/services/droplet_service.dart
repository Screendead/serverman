import 'dart:async';

import 'package:serverman/helpers/get_droplet.dart';
import 'package:serverman/models/droplet/droplet.dart';

class DropletService {
  DropletService(
    this.id, {
    int? seconds,
  }) {
    if (seconds == null) {
      getDroplet(id).then((Droplet? result) {
        droplet = result;
      });

      return;
    }

    Timer.periodic(
      Duration(seconds: seconds),
      (Timer timer) async {
        final Droplet result = await getDroplet(id);
        droplet = result;
      },
    );
  }

  final String id;
  Droplet? _droplet;
  final StreamController<Droplet?> _dropletController =
      StreamController<Droplet?>.broadcast();

  Stream<Droplet?> get stream => _dropletController.stream;

  set droplet(Droplet? value) {
    _dropletController.add(value);
    _droplet = value;
  }

  Droplet? get droplet => _droplet;

  void dispose() {
    _dropletController.close();
  }
}
