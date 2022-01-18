import 'package:flutter/material.dart';
import 'package:whatsapp/custom/CustomColors.dart';
import 'package:whatsapp/widget/ListChatOverview.dart';

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
        backgroundColor: CustomColors.greenDark,
        title: Text("WhatsApp"),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: TabBarView(
        controller: controller,
        children: [
          Center(
            child: Text("Page"),
          ),
          ListView(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  "New Message",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.greenText),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListChatOverview(
                  unread: 1,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  "Other Message",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.greenText),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListChatOverview(
                  unread: 0,
                ),
              ),
            ],
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
