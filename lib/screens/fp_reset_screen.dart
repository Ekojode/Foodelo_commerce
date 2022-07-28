import 'package:flutter/material.dart';
import 'package:foodelo_commerce/widgets/auth_password.dart';
import "package:get/get.dart";

import '../widgets/action_button.dart';

class FPResetPassword extends StatelessWidget {
  const FPResetPassword({Key? key}) : super(key: key);

  static const routeName = "/fpRestPass";

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    final passControl = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Password"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: size.height * 0.2),
          const Text(
            "Reset Password",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.05),
          const Text(
            "Set the new password to your account so you can Login and access all the deautures.",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: size.height * 0.05),
          Password(
            controller: passControl,
            hintText: "Password",
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
            hintText: "Confirm Password",
            validator: (val) {
              if (val != passControl.text) {
                return "Enter the same password";
              }
              return null;
            },
          ),
          SizedBox(height: size.height * 0.2),
          ActionButton(onPressed: () {}, actionText: "Reset Password")
        ],
      ),
    );
  }
}
