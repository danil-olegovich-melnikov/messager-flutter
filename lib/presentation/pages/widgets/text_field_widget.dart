import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String message;
  final Icon? icon;

  const TextFieldWidget({
    super.key,
    required this.message,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
          labelText: message,
          prefixIcon: icon,
        ),
      ),
    );
  }
}
