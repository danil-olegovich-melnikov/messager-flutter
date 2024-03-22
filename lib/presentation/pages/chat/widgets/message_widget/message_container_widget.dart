import 'package:flutter/material.dart';

class MessageContainerWidget extends StatelessWidget {
  final bool isPrimary;
  final List<Widget> children;
  final double? width;

  const MessageContainerWidget({
    super.key,
    required this.isPrimary,
    required this.children,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final MainAxisAlignment mainAxisAlignment;
    final Color color;
    final double bottomLeft;
    final double bottomRight;

    if (isPrimary) {
      mainAxisAlignment = MainAxisAlignment.end;
      color = theme.colorScheme.primary;
      bottomLeft = 23;
      bottomRight = 0;
    } else {
      mainAxisAlignment = MainAxisAlignment.start;
      color = theme.colorScheme.secondary;
      bottomLeft = 0;
      bottomRight = 23;
    }

    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Container(
					width: width,
					margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(23),
              topRight: const Radius.circular(23),
              bottomLeft: Radius.circular(bottomLeft),
              bottomRight: Radius.circular(bottomRight),
            ),
          ),
          padding: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ],
    );
  }
}
