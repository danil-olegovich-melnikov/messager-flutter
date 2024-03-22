import 'package:flutter/material.dart';
import 'package:messanger/data/entities/message_status_entity.dart';

class MessageStatusWidget extends StatelessWidget {
  final MessageStatusEntity status;

  const MessageStatusWidget({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    IconData icon;
    switch (status) {
      case MessageStatusEntity.delivered:
        icon = Icons.done;
        break;
      case MessageStatusEntity.read:
        icon = Icons.done_all;
        break;
      case MessageStatusEntity.waiting:
        icon = Icons.watch_later_outlined;
        break;
      default:
        throw Error();
    }

    return Container(
      margin: const EdgeInsets.only(left: 4),
      child: Icon(
        icon,
        size: 12,
      ),
    );
  }
}
