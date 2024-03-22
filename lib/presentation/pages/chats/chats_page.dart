import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messanger/presentation/cubits/chats/chats_cubit.dart';
import 'package:messanger/presentation/pages/chats/widgets/contact_card_widget.dart';
import 'package:messanger/presentation/pages/chats/widgets/heading_widget.dart';
import 'package:messanger/presentation/pages/widgets/text_field_widget.dart';

class ChatsPageProvider extends StatelessWidget {
  const ChatsPageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatsCubit(),
      child: const ChatsPage(),
    );
  }
}

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeadingWidget(),
              const SizedBox(height: 10),
              const TextFieldWidget(
                message: 'Поиск',
                icon: Icon(Icons.search, size: 20),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: BlocBuilder<ChatsCubit, ChatsState>(
                  builder: (context, state) {
                    return ListView.builder(
                      itemCount: state.contacts.length,
                      itemBuilder: (context, index) {
                        return ContactCardWidget(
                          contact: state.contacts[index],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
