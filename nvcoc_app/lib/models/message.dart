class Message {
  String collectionName = "worship info";
  final String message;
  final String messageTitle;

  Message({
    required this.messageTitle,
    required this.message,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      messageTitle: json['messageTitle'].toString(),
      message: json['message'].toString(),
    );
  }
}
