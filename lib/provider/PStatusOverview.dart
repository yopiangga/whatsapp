import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:whatsapp/model/StatusOverview.dart';

class PStatusOverview with ChangeNotifier {
  List<StatusOverview> _statusOverview = [
    StatusOverview(
        name: faker.person.name(),
        time: "Today, 4.45 PM",
        image: "https://picsum.photos/200/300?random=1",
        countUpdate: 2),
    StatusOverview(
        name: faker.person.name(),
        time: "Today, 5.45 PM",
        image: "https://picsum.photos/200/300?random=2",
        countUpdate: 3),
    StatusOverview(
        name: faker.person.name(),
        time: "Today, 6.45 PM",
        image: "https://picsum.photos/200/300?random=3",
        countUpdate: 4),
    StatusOverview(
        name: faker.person.name(),
        time: "Today, 7.45 PM",
        image: "https://picsum.photos/200/300?random=4",
        countUpdate: 5),
    StatusOverview(
        name: faker.person.name(),
        time: "Today, 8.45 PM",
        image: "https://picsum.photos/200/300?random=5",
        countUpdate: 6),
    StatusOverview(
        name: faker.person.name(),
        time: "Today, 9.45 PM",
        image: "https://picsum.photos/200/300?random=6",
        countUpdate: 7),
  ];

  List<StatusOverview> get statusOverviews => _statusOverview;
}
