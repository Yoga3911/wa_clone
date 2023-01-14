class CallModel {
  final String username;
  final DateTime callDate;
  final bool isComingCall;
  final String? avatar = "assets/cana.jpg";

  const CallModel({
    required this.username,
    required this.callDate,
    required this.isComingCall,
  });
}
