import 'package:flutter/material.dart';
import 'package:messanger/data/entities/messages_by_id_entity.dart';

class ProfileTextWidget extends StatelessWidget {
  const ProfileTextWidget({
    super.key,
    required this.contact,
  });

  final MessagesByIdEntity contact;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          contact.user.fullName,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          contact.user.status,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
