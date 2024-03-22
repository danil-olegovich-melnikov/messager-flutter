import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Widget child;

  const ButtonWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
