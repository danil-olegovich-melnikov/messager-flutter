import 'package:flutter/material.dart';
import 'package:messanger/data/entities/message_entity.dart';
import 'package:messanger/presentation/pages/chat/widgets/message_widget/message_status_widget.dart';

class MessageTextWidget extends StatelessWidget {
  final MessageEntity message;
  final bool showStatus;

  const MessageTextWidget({
    super.key,
    required this.message,
    required this.showStatus,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 6, right: 10, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 250),
            child: Text(
              message.text,
              style: theme.textTheme.titleMedium,
            ),
          ),
          const SizedBox(width: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                message.time,
                style: theme.textTheme.titleSmall,
              ),
              showStatus
                  ? MessageStatusWidget(status: message.status)
                  : Container(),
            ],
          ),
        ],
      ),
    );
  }
}
