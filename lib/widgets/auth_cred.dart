import 'package:flutter/material.dart';

class AuthCred extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  const AuthCred({
    Key? key,
    required this.hintText,
    required this.icon,
    this.validator,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        icon: Icon(
          icon,
          color: Colors.black,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        hintText: hintText,
      ),
    );
  }
}
