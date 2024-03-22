import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  final String text;

  const DateWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 1,
              color: theme.colorScheme.secondary,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 1,
              color: theme.colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
