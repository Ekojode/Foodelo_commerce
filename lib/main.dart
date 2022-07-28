import 'package:flutter/material.dart';
import "package:get/get.dart";
import './screens/login_screen.dart';
import './screens/signup_screen.dart';
import './screens/email_confirmation_screen.dart';

//import './screens.dart/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodelo Commerce',
      theme: ThemeData(),
      home: const LoginScreen(),
      getPages: [
        GetPage(name: LoginScreen.routeName, page: () => const LoginScreen()),
        GetPage(name: SignUpScreen.routeName, page: () => const SignUpScreen()),
        GetPage(
            name: EmailConfirmation.routeName,
            page: () => const EmailConfirmation()),
      ],
    );
  }
}
