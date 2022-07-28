import 'package:flutter/material.dart';
import 'package:foodelo_commerce/widgets/reuseable_text_field.dart';
import 'package:get/get.dart';

import '../widgets/auth_image.dart';
import '../widgets/auth_header_text.dart';
import '../widgets/auth_actiona.dart';

class EmailConfirmation extends StatelessWidget {
  const EmailConfirmation({Key? key}) : super(key: key);

  static const routeName = "/emailConfirmation";

  @override
  Widget build(BuildContext context) {
    final otpController = TextEditingController();
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
              ReusableText(
                labelText: "Enter OTP",
                controller: otpController,
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
