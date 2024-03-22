import 'package:flutter/material.dart';
import 'package:messanger/data/entities/messages_by_id_entity.dart';
import 'package:messanger/presentation/pages/widgets/contact_card_text_bottom_widget.dart';

class ContactCardTextWidget extends StatelessWidget {
  final MessagesByIdEntity contact;

  const ContactCardTextWidget({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            contact.user.fullName,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          ContactCardTextBottomWidget(lastMessage: contact.lastMessage),
        ],
      ),
    );
  }
}
