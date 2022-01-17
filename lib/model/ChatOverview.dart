class ChatOverview {
  int unread;
  String image;
  String name;
  String lastChat;
  bool online;
  String lastTimeChat;

  ChatOverview(
      {this.unread = 0,
      this.image = "",
      this.name = "",
      this.lastChat = "",
      this.online = false,
      this.lastTimeChat = ""});
}
