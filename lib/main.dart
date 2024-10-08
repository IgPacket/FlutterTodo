import 'package:flutter/material.dart';
import 'package:flutter_todo/pages/home.dart';
import 'package:flutter_todo/pages/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.deepOrangeAccent),
    initialRoute: '/',
    routes: {
      '/': (context) => MainScreen(),
      '/todo': (context) => Home(),
    },
  ));
}