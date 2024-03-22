import 'package:flutter/material.dart';

class BorderContainerWidget extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const BorderContainerWidget({
    super.key,
    required this.child,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      padding: padding,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: theme.colorScheme.secondary),
          bottom: BorderSide(width: 1, color: theme.colorScheme.secondary),
        ),
      ),
      child: child,
    );
  }
}
