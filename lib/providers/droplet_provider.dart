import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:serverman/models/droplet.dart';
import 'package:serverman/services/droplet_service.dart';

class DropletProvider extends SingleChildStatelessWidget {
  const DropletProvider({
    super.key,
    required this.id,
    Widget? child,
  });

  final String id;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return StreamProvider<Droplet?>(
      initialData: null,
      create: (BuildContext context) => DropletService(id).dropletStream,
      child: child,
    );
  }
}
