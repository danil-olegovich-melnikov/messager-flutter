import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messanger/data/entities/messages_by_id_entity.dart';
import 'package:messanger/presentation/cubits/chats/chats_cubit.dart';
import 'package:messanger/presentation/pages/chat/widgets/list_messages_widget.dart';
import 'package:messanger/presentation/pages/chat/widgets/profile_text_widget.dart';
import 'package:messanger/presentation/pages/chat/widgets/tabbar_widget.dart';
import 'package:messanger/presentation/pages/widgets/border_container_widget.dart';
import 'package:messanger/presentation/pages/widgets/profile_widget.dart';

class ChatPageProvider extends StatelessWidget {
  final MessagesByIdEntity contact;

  const ChatPageProvider({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatsCubit(),
      child: ChatPage(contact: contact),
    );
  }
}

class ChatPage extends StatelessWidget {
  final MessagesByIdEntity contact;

  const ChatPage({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: Container(
            color: theme.colorScheme.secondary,
            height: 1,
          ),
        ),
        title: Row(
          children: [
            ProfileWidget(contact: contact.user),
            const SizedBox(width: 12),
            ProfileTextWidget(contact: contact),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BlocBuilder<ChatsCubit, ChatsState>(
              builder: (context, state) {
                return ListMessagesWidget(contact: contact, myId: state.myId);
              },
            ),
            const SizedBox(height: 10),
            const BorderContainerWidget(
              padding:
                  EdgeInsets.only(top: 14, right: 20, bottom: 24, left: 20),
              child: TabbarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
