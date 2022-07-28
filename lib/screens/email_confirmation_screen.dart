import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/auth_image.dart';
import '../widgets/auth_header_text.dart';
import '../widgets/auth_actiona.dart';

class EmailConfirmation extends StatefulWidget {
  const EmailConfirmation({Key? key}) : super(key: key);

  static const routeName = "/emailConfirmation";

  @override
  State<EmailConfirmation> createState() => _EmailConfirmationState();
}

class _EmailConfirmationState extends State<EmailConfirmation> {
  final _otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: size.height * 0.025),
              AuthImage(
                  size: size.height * 0.4,
                  imagePath: "assets/images/authentification.jpg"),
              SizedBox(height: size.height * 0.01),
              const AuthHeader(text: "Email Confirmation"),
              SizedBox(height: size.height * 0.01),
              TextField(
                controller: _otpController,
                decoration: InputDecoration(
                  labelText: 'Enter OTP',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              AuthAction(
                onPressed: () {},
                actionText: "Verify Email",
              )
            ],
          ),
        ),
      ),
    );
  }
}
