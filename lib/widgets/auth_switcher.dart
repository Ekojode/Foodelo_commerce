import 'package:flutter/material.dart';

class AuthSwitcher extends StatelessWidget {
  final VoidCallback fucntion;
  final String initialText;
  final String finalText;
  const AuthSwitcher(
      {Key? key,
      required this.fucntion,
      required this.initialText,
      required this.finalText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fucntion,
      child: Center(
        child: RichText(
          text: TextSpan(
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            children: [
              TextSpan(text: initialText),
              TextSpan(
                  text: finalText,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue.shade700))
            ],
          ),
        ),
      ),
    );
  }
}
