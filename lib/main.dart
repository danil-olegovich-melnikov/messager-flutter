import 'package:flutter/material.dart';
import 'package:messanger/presentation/pages/chats/chats_page.dart';
import 'package:messanger/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      home: const ChatsPageProvider(),
    );
  }
}
