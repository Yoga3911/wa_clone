import 'package:flutter/material.dart';
import 'package:whatsapp/dummy/chat.dart';
import 'package:whatsapp/screens/chat/widgets/chat_tile.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (_, idx) {
          final chat = chatData[idx];
          return ChatTileWidget(chat: chat);
        },
      ),
    );
  }
}
