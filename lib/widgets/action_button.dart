import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthAction extends StatelessWidget {
  final VoidCallback onPressed;
  final String actionText;
  const AuthAction(
      {Key? key, required this.onPressed, required this.actionText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    return InkWell(
      onTap: onPressed,
      child: Center(
        child: Container(
          height: size.height * 0.075,
          width: size.width * 0.9,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              actionText,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
