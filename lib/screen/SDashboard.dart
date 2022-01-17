import 'package:flutter/material.dart';

class SDashboard extends StatefulWidget {
  const SDashboard({Key? key}) : super(key: key);

  @override
  _SDashboardState createState() => _SDashboardState();
}

class _SDashboardState extends State<SDashboard>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = TabController(length: 4, vsync: this);
    controller.animateTo(1);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
      ),
      body: TabBarView(
        children: [
          Center(
            child: Text("Page"),
          ),
          Center(
            child: Text("Page"),
          ),
          Center(
            child: Text("Page"),
          ),
          Center(
            child: Text("Page"),
          )
        ],
      ),
    );
  }
}
