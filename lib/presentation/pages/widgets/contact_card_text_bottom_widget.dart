import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messanger/data/entities/message_entity.dart';
import 'package:messanger/presentation/cubits/chats/chats_cubit.dart';

class ContactCardTextBottomWidgetProvider extends StatelessWidget {
  final MessageEntity? lastMessage;

  const ContactCardTextBottomWidgetProvider(
      {super.key, required this.lastMessage});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatsCubit(),
      child: ContactCardTextBottomWidget(lastMessage: lastMessage),
    );
  }
}

class ContactCardTextBottomWidget extends StatelessWidget {
  final MessageEntity? lastMessage;

  const ContactCardTextBottomWidget({super.key, required this.lastMessage});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return lastMessage == null
        ? Container()
        : BlocBuilder<ChatsCubit, ChatsState>(
            builder: (context, state) {
              return Row(
                children: [
                  Text(
                    lastMessage!.fromContactId == state.myId ? 'Вы: ' : '',
                    style: theme.textTheme.headlineSmall,
                  ),
                  Expanded(
                    child: Text(
                      lastMessage!.text,
                      style: theme.textTheme.bodySmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              );
            },
          );
  }
}
