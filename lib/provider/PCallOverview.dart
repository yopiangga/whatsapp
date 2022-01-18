import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:whatsapp/model/CallOverview.dart';

class PCallOverview with ChangeNotifier {
  List<CallOverview> _callOverviews = [
    CallOverview(
        name: faker.person.name(),
        time: "Today, 4.45 PM",
        countCall: 5,
        type: true,
        image: "https://picsum.photos/200/300?random=11",
        status: 1),
    CallOverview(
        name: faker.person.name(),
        time: "Today, 5.45 PM",
        countCall: 3,
        type: true,
        image: "https://picsum.photos/200/300?random=12",
        status: 1),
    CallOverview(
        name: faker.person.name(),
        time: "Today, 6.45 PM",
        countCall: 4,
        type: false,
        image: "https://picsum.photos/200/300?random=13",
        status: 1),
    CallOverview(
        name: faker.person.name(),
        time: "Today, 7.45 PM",
        countCall: 2,
        type: true,
        image: "https://picsum.photos/200/300?random=14",
        status: 2),
    CallOverview(
        name: faker.person.name(),
        time: "Today, 8.45 PM",
        countCall: 3,
        type: true,
        image: "https://picsum.photos/200/300?random=15",
        status: 2),
    CallOverview(
        name: faker.person.name(),
        time: "Today, 9.45 PM",
        countCall: 4,
        type: false,
        image: "https://picsum.photos/200/300?random=16",
        status: 2),
  ];

  List<CallOverview> get callOverviews => _callOverviews;
}
