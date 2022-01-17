import 'package:flutter/cupertino.dart';

class MyStatusOverview {
  String title;
  String description;
  String image;
  IconData? action;

  MyStatusOverview(
      {this.title = "", this.description = "", this.image = "", this.action});
}
