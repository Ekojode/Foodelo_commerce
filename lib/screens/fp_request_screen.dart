import 'package:flutter/material.dart';
import "package:get/get.dart";

import '../widgets/auth_actiona.dart';
import '../widgets/reuseable_text_field.dart';

class FPRequest extends StatelessWidget {
  const FPRequest({Key? key}) : super(key: key);

  static const routeName = "/fPRequest";

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    final emailControl = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: size.height * 0.2),
          const Text(
            "Request Password reset",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.05),
          const Text(
            "Enter your email for the verification process, We will send a one time password to your mail",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: size.height * 0.05),
          ReusableText(controller: emailControl, labelText: "Enter your email"),
          SizedBox(height: size.height * 0.2),
          AuthAction(onPressed: () {}, actionText: "Continue")
        ],
      ),
    );
  }
}
