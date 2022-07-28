import 'package:flutter/material.dart';

class AuthEmail extends StatelessWidget {
  const AuthEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(
          Icons.email_outlined,
          color: Colors.black,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        hintText: "Enter your email",
      ),
    );
  }
}
