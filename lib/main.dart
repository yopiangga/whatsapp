import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/provider/PCallOverview.dart';
import 'package:whatsapp/provider/PChatOverview.dart';
import 'package:whatsapp/provider/PMyStatusOverview.dart';
import 'package:whatsapp/provider/PNabBottom.dart';
import 'package:whatsapp/provider/PStatusOverview.dart';
import 'package:whatsapp/screen/SDashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => PCallOverview()),
          ChangeNotifierProvider(create: (context) => PChatOverview()),
          ChangeNotifierProvider(create: (context) => PMyStatusOverview()),
          ChangeNotifierProvider(create: (context) => PStatusOverview()),
          ChangeNotifierProvider(create: (context) => PNavBottom()),
        ],
        child: SDashboard(),
      ),
    );
  }
}
