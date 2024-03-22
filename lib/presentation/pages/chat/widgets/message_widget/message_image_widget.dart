import 'package:flutter/material.dart';

class MessageImageWidget extends StatelessWidget {
  final String path;

  const MessageImageWidget({
    super.key,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(19),
        topRight: Radius.circular(19),
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(8),
      ),
      child: Image.network(
        path,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
