import 'package:flutter/cupertino.dart';
import 'package:whatsapp/model/CallOverview.dart';

class PCallOverview with ChangeNotifier {
  List<CallOverview> _callOverviews = [];

  List<CallOverview> get callOverviews => _callOverviews;
}
