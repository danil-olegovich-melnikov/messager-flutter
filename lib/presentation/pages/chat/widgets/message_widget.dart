import 'package:flutter/material.dart';
import 'package:messanger/data/entities/message_entity.dart';
import 'package:messanger/presentation/pages/chat/widgets/message_widget/message_image_widget.dart';
import 'package:messanger/presentation/pages/chat/widgets/message_widget/message_text_widget.dart';
import 'package:messanger/presentation/pages/chat/widgets/message_widget/message_container_widget.dart';

class MessageWidget extends StatelessWidget {
  final bool isPrimary;
  final MessageEntity message;

  const MessageWidget({
    super.key,
    required this.isPrimary,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return MessageContainerWidget(
      width: message.imageUrl == null ? null : 274,
      isPrimary: isPrimary,
      children: [
        message.imageUrl == null
            ? Container()
            : MessageImageWidget(path: message.imageUrl!),
        MessageTextWidget(message: message, showStatus: isPrimary),
      ],
    );
  }
}
