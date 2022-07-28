import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  final IconData icon;
  final String hint;
  const TextForm({Key? key, required this.icon, required this.hint})
      : super(key: key);

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(widget.icon),
        hintText: widget.hint,
      ),
    );
  }
}
