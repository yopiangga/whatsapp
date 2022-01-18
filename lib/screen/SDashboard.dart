import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/custom/CustomColors.dart';
import 'package:whatsapp/model/MyStatusOverview.dart';
import 'package:whatsapp/provider/PNabBottom.dart';
import 'package:whatsapp/widget/ListChatOverview.dart';
import 'package:whatsapp/widget/ListStatusOverview.dart';
import 'package:whatsapp/widget/WMyStatusOverview.dart';
import 'package:whatsapp/widget/WNavBottom.dart';

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
            SizedBox(
              width: 10,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Container(
              color: CustomColors.greenDark,
              height: 50.0,
              child: Row(
                children: [
                  Consumer<PNavBottom>(
                    builder: (context, value, _) => GestureDetector(
                      onTap: () {
                        setState(() {
                          controller.animateTo(0);
                          value.setMenuActive = 0;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 13 / 100,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: value.isMenuActive == 0
                                        ? CustomColors.greenNotify
                                        : CustomColors.greenNotify
                                            .withOpacity(0),
                                    width: 3))),
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  WNavBottom(
                    title: "CHATS",
                    index: 1,
                    controller: controller,
                    notify: 7,
                  ),
                  WNavBottom(
                    title: "STATUS",
                    index: 2,
                    controller: controller,
                  ),
                  WNavBottom(
                    title: "CALLS",
                    index: 3,
                    controller: controller,
                    notify: 3,
                  ),
                ],
              ),
            ),
          )),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          Center(
            child: Text("Page"),
          ),
          ListView(
            children: [
              SizedBox(
                height: 10,
              ),
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
          ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  "Your Updates",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.greenText),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: WMyStatusOverview(
                  item: MyStatusOverview(
                      title: "My Status",
                      description: "Tap to add status updates",
                      image: "",
                      action: Icons.more_vert),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  "Viewed Updates",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.greenText),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListStatusOverview(),
              ),
            ],
          ),
          Center(
            child: Text("Page 3"),
          )
        ],
      ),
    );
  }
}
