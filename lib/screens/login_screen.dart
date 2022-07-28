import 'package:flutter/material.dart';
import 'package:foodelo_commerce/widgets/auth_cred.dart';
import 'package:foodelo_commerce/widgets/auth_password.dart';
import 'package:get/get.dart';

import '../screens/signup_screen.dart';
import '../widgets/auth_header_text.dart';
import '../widgets/auth_image.dart';
import '../widgets/auth_switcher.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const routeName = "/logIn";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailConntrol = TextEditingController();
  final _passwordControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.025),
              AuthImage(
                  size: size.height * 0.4,
                  imagePath: "assets/images/loginpic.jpg"),
              SizedBox(
                height: size.height * 0.25,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AuthHeader(text: "Log In"),
                        AuthCred(
                          controller: _emailConntrol,
                          hintText: "Enter your email",
                          icon: Icons.email,
                        ),
                        Password(
                            hintText: "Enter your password",
                            controller: _passwordControl),
                        Container(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              InkWell(
                onTap: () {},
                child: Center(
                  child: Container(
                    height: size.height * 0.075,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              AuthSwitcher(
                  fucntion: () {
                    Get.offAllNamed(SignUpScreen.routeName);
                  },
                  initialText: "New to Foodelo Commerce",
                  finalText: "Register"),
            ],
          ),
        ),
      ),
    );
  }
}
