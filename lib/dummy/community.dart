import 'package:whatsapp/models/chat.dart';
import 'package:whatsapp/models/community.dart';

List<CommunityModel> communityData = [
  const CommunityModel(
    communityName: "Fugi",
    listChat: [
      ChatModel(
        username: "Fugi 1",
        message: "Hahah",
        total: 2,
      ),
      ChatModel(
        username: "Fugi 2",
        message: "Mantap ngab",
        total: 1,
      ),
    ],
  ),
  const CommunityModel(
    communityName: "Flutter",
    listChat: [
      ChatModel(
        username: "Flutter 1",
        message: "Hoho",
        total: 0,
      ),
      ChatModel(
        username: "Flutter 2",
        message: "Oke ngab",
        total: 1,
      ),
    ],
  ),
  const CommunityModel(
    communityName: "Golang",
    listChat: [
      ChatModel(
        username: "Golang 1",
        message: "Hihihi",
        total: 10,
      ),
      ChatModel(
        username: "Golang 2",
        message: "Mantap ngab",
        total: 1,
      ),
    ],
  ),
];
