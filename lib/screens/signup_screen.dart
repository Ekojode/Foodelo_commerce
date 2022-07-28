import 'package:flutter/material.dart';
import 'package:foodelo_commerce/widgets/auth_actiona.dart';
import 'package:foodelo_commerce/widgets/auth_email.dart';
import 'package:foodelo_commerce/widgets/auth_password.dart';
import 'package:get/get.dart';

import '../screens/login_screen.dart';
import '../widgets/auth_header_text.dart';
import '../widgets/auth_image.dart';
import '../widgets/auth_switcher.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static const routeName = "/signUpScreen";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isChecked = false;
  final _passwordController = TextEditingController();
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
                  size: size.height * 0.04,
                  imagePath: "assets/images/signup.jpg"),
              SizedBox(
                height: size.height * 0.40,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AuthHeader(text: "Sign Up"),
                        const AuthEmail(),
                        const Password(hintText: "Enter your password"),
                        const Password(hintText: "Confirm your password"),
                        SizedBox(height: size.height * 0.03),
                        Row(
                          children: [
                            Checkbox(
                                activeColor: Colors.black,
                                value: _isChecked,
                                onChanged: (value) {
                                  setState(() {
                                    _isChecked = value!;
                                  });
                                }),
                            Expanded(
                              child: SizedBox(
                                child: Center(
                                  child: RichText(
                                    text: TextSpan(
                                      style:
                                          const TextStyle(color: Colors.black),
                                      children: [
                                        const TextSpan(
                                            text:
                                                "By signing up, you agree to our "),
                                        TextSpan(
                                            text: "Terms & Conditions",
                                            style: TextStyle(
                                                color: Colors.blue.shade700,
                                                fontWeight: FontWeight.bold)),
                                        const TextSpan(text: " and"),
                                        TextSpan(
                                            text: " Privacy Policy",
                                            style: TextStyle(
                                                color: Colors.blue.shade700,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              AuthAction(onPressed: () {}, actionText: "Sign Up"),
              SizedBox(height: size.height * 0.02),
              AuthSwitcher(
                  fucntion: () {
                    Get.offAllNamed(LoginScreen.routeName);
                  },
                  initialText: "Have a Foodelo Account?",
                  finalText: "Login")
            ],
          ),
        ),
      ),
    );
  }
}
