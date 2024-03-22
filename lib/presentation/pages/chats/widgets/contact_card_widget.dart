import 'package:flutter/material.dart';
import 'package:messanger/data/entities/messages_by_id_entity.dart';
import 'package:messanger/presentation/pages/chat/chat_page.dart';
import 'package:messanger/presentation/pages/chats/widgets/contact_card_time_widget.dart';
import 'package:messanger/presentation/pages/widgets/border_container_widget.dart';
import 'package:messanger/presentation/pages/widgets/contact_card_text_widget.dart';
import 'package:messanger/presentation/pages/widgets/profile_widget.dart';

class ContactCardWidget extends StatelessWidget {
  final MessagesByIdEntity contact;

  const ContactCardWidget({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatPageProvider(
              contact: contact,
            ),
          ),
        );
      },
      child: BorderContainerWidget(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileWidget(contact: contact.user),
            const SizedBox(width: 12),
            ContactCardTextWidget(contact: contact),
            const SizedBox(width: 12),
            ContactCardTimeWidget(lastMessage: contact.lastMessage),
            const SizedBox(width: 12),
          ],
        ),
      ),
    );
  }
}
