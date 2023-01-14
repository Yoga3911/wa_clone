class ChatModel {
  final String username;
  final String message;
  final int total;
  final bool? isStatus;
  final bool? isMute;
  final String? avatar = "assets/cana.jpg";

  const ChatModel({
    required this.username,
    required this.message,
    required this.total,
    this.isStatus = false,
    this.isMute = false,
  });
}
