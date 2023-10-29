import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:serverman/firebase_options.dart';
import 'package:serverman/providers/droplet_provider.dart';
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
    return MultiProvider(
      providers: <SingleChildWidget>[
        DropletProvider(
          id: dotenv.env['DIGITALOCEAN_DROPLET_ID'] as String,
        ),
      ],
      child: MaterialApp(
        title: 'Server Manager',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: Center(
            child: ListView(
              children: const <Widget>[
                DropletManager(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
