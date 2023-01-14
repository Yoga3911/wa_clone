import 'package:whatsapp/models/chat.dart';

class CommunityModel {
  final String communityName;
  final List<ChatModel> listChat;
  final String? avatar = "assets/squid.png";

  const CommunityModel({
    required this.communityName,
    required this.listChat,
  });
}
