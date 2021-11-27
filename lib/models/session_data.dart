class SessionFields {
  static final List<String> values = [id, numUsers, messages];

  static const String id = 'id';
  static const String numUsers = 'numUsers';
  static const String messages = 'messages';
}

class SessionData {
  final int numUsers;
  final List<String> messages;

  SessionData(this.numUsers, this.messages);

  String getLastMessage() {
    return messages.last;
  }

  factory SessionData.fromJson(Map<String, dynamic> json) {
    return SessionData(json[SessionFields.numUsers],
        List<String>.from(json[SessionFields.messages]));
  }

  /*
  => SessionData(
        json[SessionFields.id] as String,
        json[SessionFields.numUsers] as int,
        json[SessionFields.messages] as List<String>,
      );
  */

  Map<String, dynamic> toJson() =>
      {SessionFields.numUsers: numUsers, SessionFields.messages: messages};
}
