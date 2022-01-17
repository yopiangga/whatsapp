import 'package:flutter/cupertino.dart';
import 'package:whatsapp/model/StatusOverview.dart';

class PStatusOverview with ChangeNotifier {
  List<StatusOverview> _statusOverview = [];

  List<StatusOverview> get statusOverviews => _statusOverview;
}
