import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:serverman/models/minecraft_server/minecraft_server.dart';
import 'package:serverman/services/minecraft_server_service.dart';

class MinecraftServerProvider extends SingleChildStatelessWidget {
  const MinecraftServerProvider({
    super.key,
    required this.address,
    this.seconds,
    Widget? child,
  });

  final String address;
  final int? seconds;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return StreamProvider<MinecraftServer?>(
      initialData: null,
      create: (BuildContext context) =>
          MinecraftServerService(address, seconds: seconds).stream,
      updateShouldNotify: (MinecraftServer? previous, MinecraftServer? next) =>
          previous != next,
      child: child,
    );
  }
}
