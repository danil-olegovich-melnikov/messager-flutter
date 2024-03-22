import 'package:flutter/material.dart';
import 'package:messanger/data/entities/message_entity.dart';

class ContactCardTimeWidget extends StatelessWidget {
  final MessageEntity? lastMessage;

  const ContactCardTimeWidget({super.key, required this.lastMessage});

  @override
  Widget build(BuildContext context) {
    return lastMessage == null
        ? Container()
        : Align(
            alignment: Alignment.topRight,
            child: Text(
              lastMessage!.date,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          );
  }
}
