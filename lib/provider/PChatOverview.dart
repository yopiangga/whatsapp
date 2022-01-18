import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/model/ChatOverview.dart';

class PChatOverview with ChangeNotifier {
  List<ChatOverview> _chatOverviews = [
    ChatOverview(
        unread: 2,
        image: "https://picsum.photos/200/300?random=1",
        name: faker.person.name(),
        lastChat: faker.lorem.sentence(),
        lastTimeChat: "12:00 PM",
        readedLastChat: true,
        online: true),
    ChatOverview(
        unread: 7,
        image: "https://picsum.photos/200/300?random=2",
        name: faker.person.name(),
        lastChat: faker.lorem.sentence(),
        lastTimeChat: "02:00 PM",
        readedLastChat: true,
        online: true),
    ChatOverview(
        unread: 8,
        image: "https://picsum.photos/200/300?random=3",
        name: faker.person.name(),
        lastChat: faker.lorem.sentence(),
        lastTimeChat: "04:00 PM",
        readedLastChat: true,
        online: false),
    ChatOverview(
        unread: 0,
        image: "https://picsum.photos/200/300?random=4",
        name: faker.person.name(),
        lastChat: faker.lorem.sentence(),
        lastTimeChat: "12:00 PM",
        readedLastChat: false,
        online: true),
    ChatOverview(
        unread: 0,
        image: "https://picsum.photos/200/300?random=5",
        name: faker.person.name(),
        lastChat: faker.lorem.sentence(),
        lastTimeChat: "02:00 PM",
        readedLastChat: true,
        online: false),
  ];

  List<ChatOverview> get chatOverviews => _chatOverviews;
}
