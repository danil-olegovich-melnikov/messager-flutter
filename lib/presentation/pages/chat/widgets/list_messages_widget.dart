import 'package:flutter/material.dart';
import 'package:messanger/data/entities/message_entity.dart';
import 'package:messanger/data/entities/messages_by_date_entity.dart';
import 'package:messanger/data/entities/messages_by_id_entity.dart';
import 'package:messanger/presentation/pages/chat/widgets/date_widget.dart';
import 'package:messanger/presentation/pages/chat/widgets/message_widget.dart';

class ListMessagesWidget extends StatelessWidget {
  const ListMessagesWidget({
    super.key,
    required this.contact,
    required this.myId,
  });

  final MessagesByIdEntity contact;
  final int myId;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        reverse: true,
        itemCount: contact.messagesByDate.length,
        itemBuilder: (context, index) {
          MessagesByDateEntity messagesByDate = contact.messagesByDate[index];

          List<Widget> messageWidgets = [
            DateWidget(
              text: messagesByDate.date,
            ),
          ];

          for (MessageEntity message in messagesByDate.messages) {
            messageWidgets.add(
              MessageWidget(
                message: message,
                isPrimary: myId == message.fromContactId,
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: messageWidgets,
            ),
          );
        },
      ),
    );
  }
}
