class ChatModel {
  final String username;
  final String message;
  final bool? isStatus;
  final bool? isMessage;
  final bool? isMute;
  final String? avatar = "assets/cana.jpg";

  const ChatModel({
    required this.username,
    required this.message,
    this.isStatus = false,
    this.isMessage = false,
    this.isMute = false,
  });
}
