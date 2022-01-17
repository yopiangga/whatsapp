import 'package:flutter/cupertino.dart';
import 'package:whatsapp/model/MyStatusOverview.dart';

class PMyStatusOverview with ChangeNotifier {
  MyStatusOverview _myStatusOverview = MyStatusOverview();

  MyStatusOverview get myStatusOverview => _myStatusOverview;
}
