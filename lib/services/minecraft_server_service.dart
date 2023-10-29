import 'dart:async';

import 'package:serverman/helpers/get_minecraft_server.dart';
import 'package:serverman/models/minecraft_server/minecraft_server.dart';

class MinecraftServerService {
  MinecraftServerService(
    this.address, {
    int? seconds,
  }) {
    if (seconds == null) {
      getMinecraftServer(address).then((MinecraftServer? result) {
        minecraftServer = result;
      });

      return;
    }

    Timer.periodic(
      Duration(seconds: seconds),
      (Timer timer) async {
        final MinecraftServer result = await getMinecraftServer(address);
        minecraftServer = result;
      },
    );
  }

  final String address;
  MinecraftServer? _minecraftServer;
  final StreamController<MinecraftServer?> _minecraftServerController =
      StreamController<MinecraftServer?>.broadcast();

  Stream<MinecraftServer?> get stream => _minecraftServerController.stream;

  set minecraftServer(MinecraftServer? value) {
    _minecraftServerController.add(value);
    _minecraftServer = value;
  }

  MinecraftServer? get minecraftServer => _minecraftServer;

  void dispose() {
    _minecraftServerController.close();
  }
}
