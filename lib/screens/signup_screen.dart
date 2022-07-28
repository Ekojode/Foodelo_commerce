import 'package:flutter/material.dart';
import 'package:foodelo_commerce/widgets/action_button.dart';
import 'package:foodelo_commerce/widgets/auth_cred.dart';
import 'package:foodelo_commerce/widgets/auth_password.dart';
import 'package:get/get.dart';

import '../screens/login_screen.dart';
import '../models/auth.dart';
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
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();

  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final Map<String, dynamic> _authData = {
    "name": "",
    'email': '',
    'password': '',
  };

  void _submit() async {
    _authData["password"] = _passwordController.text.toString();
    _authData["name"] = _nameController.text.toString();
    _authData["email"] = _emailController.text.toString();

    if (!_formKey.currentState!.validate()) {
      return;
    }
    setState(() {
      _isLoading = true;
    });
    _formKey.currentState!.save();
    final authController = Get.put(Auth());

    try {
      await authController.signUp(
          name: _authData["name"]!,
          email: _authData["email"]!,
          password: _authData["password"]!);
    } catch (e) {
      rethrow;
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //  final authController = Get.put(Auth());
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
                  imagePath: "assets/images/signup.jpg"),
              SizedBox(
                height: size.height * 0.44,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AuthHeader(text: "Sign Up"),
                        AuthCred(
                          controller: _nameController,
                          hintText: "Enter your name",
                          icon: Icons.person,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Enter a valid name";
                            }
                            return null;
                          },
                        ),
                        AuthCred(
                          controller: _emailController,
                          hintText: 'Enter your Email',
                          icon: Icons.email,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required';
                            }
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return "Please enter a valid email address";
                            }
                            return null;
                          },
                        ),
                        Password(
                          controller: _passwordController,
                          hintText: "Enter your password",
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Password is required';
                            }
                            if (value.trim().length < 6) {
                              return 'Password must be at least 6 characters in length';
                            }
                            return null;
                          },
                        ),
                        Password(
                          hintText: "Confirm your password",
                          validator: (value) {
                            if (value != _passwordController.text) {
                              return "Enter the same password";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: size.height * 0.03),
                      ],
                    ),
                  ),
                ),
              ),
              !_isLoading
                  ? ActionButton(onPressed: _submit, actionText: "Sign Up")
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),
              // AuthAction(onPressed: _submit, actionText: "Sign Up"),
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
