class ChatOverview {
  int unread;
  String image;
  String name;
  String lastChat;
  String lastTimeChat;
  bool readedLastChat;
  bool online;

  ChatOverview({
    this.unread = 0,
    this.image = "",
    this.name = "",
    this.lastChat = "",
    this.lastTimeChat = "",
    this.readedLastChat = false,
    this.online = false,
  });
}
