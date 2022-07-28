import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  final String hintText;
  const Password({Key? key, required, required this.hintText})
      : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          icon: const Icon(
            Icons.lock,
            color: Colors.black,
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
            icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
            color: Colors.black,
          ),
          hintText: widget.hintText),
      obscureText: isObscure,
    );
  }
}
