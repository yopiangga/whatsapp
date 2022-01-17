import 'package:flutter/material.dart';
import 'package:whatsapp/model/ChatOverview.dart';

class PChatOverview with ChangeNotifier {
  List<ChatOverview> _chatOverviews = [];

  List<ChatOverview> get chatOverviews => _chatOverviews;
}
