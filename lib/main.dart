import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:serverman/firebase_options.dart';
import 'package:serverman/models/droplet.dart';
import 'package:serverman/services/droplet_service.dart';
import 'package:serverman/widgets/droplet_manager.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<Droplet?>.value(
      value: GetIt.instance.get<DropletService>().dropletStream,
      initialData: null,
      updateShouldNotify: (Droplet? previous, Droplet? current) {
        return previous != current;
      },
      child: MaterialApp(
        title: 'Server Manager',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: Center(
            child: ListView(
              children: <Widget>[
                DropletManager(
                  dropletId: dotenv.env['DIGITALOCEAN_DROPLET_ID'] as String,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
