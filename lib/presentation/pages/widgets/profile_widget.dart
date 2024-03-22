import 'package:flutter/material.dart';
import 'package:messanger/data/entities/contact_entity.dart';

class ProfileWidget extends StatelessWidget {
  final ContactEntity contact;

  const ProfileWidget({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: contact.getGradientColors(),
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          contact.abbr,
          style: theme.textTheme.headlineMedium,
        ),
      ),
    );
  }
}
