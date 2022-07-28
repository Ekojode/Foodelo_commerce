import 'package:flutter/material.dart';
import './screens.dart/login_screen.dart';

//import './screens.dart/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodelo Commerce',
      theme: ThemeData(),
      home: const LoginScreen(),
    );
  }
}
