import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:twitter/core/theme/darktheme.dart';
import 'package:twitter/firebase_options.dart';
import 'package:twitter/views/feature/splash_screen.dart';
import 'package:twitter/views/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      themeMode: ThemeMode.dark,
      home: Home(),
    );
  }
}
