import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/custom/CustomColors.dart';
import 'package:whatsapp/model/MyStatusOverview.dart';
import 'package:whatsapp/provider/PNabBottom.dart';
import 'package:whatsapp/widget/ListCallOverview.dart';
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
          title: Text("WhatsApp Premium"),
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
      floatingActionButton: Consumer<PNavBottom>(
        builder: (context, value, _) => Container(
          // color: Colors.amber,
          width: 60,
          height: value.isMenuActive == 1
              ? 0
              : value.isMenuActive == 2
                  ? 130
                  : value.isMenuActive == 3
                      ? 60
                      : 0,
          child: Stack(
            children: [
              value.isMenuActive == 2
                  ? Positioned(
                      right: 0,
                      bottom: 70,
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: CustomColors.greenNotify,
                        child: Icon(Icons.edit),
                      ))
                  : Container(),
              value.isMenuActive == 2
                  ? Positioned(
                      right: 0,
                      bottom: 0,
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: CustomColors.greenDark,
                        child: Icon(Icons.camera_alt),
                      ))
                  : Container(),
              value.isMenuActive == 3
                  ? Positioned(
                      right: 0,
                      bottom: 0,
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: CustomColors.greenDark,
                        child: Icon(Icons.call),
                      ))
                  : Container()
            ],
          ),
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          Center(
            child: Text("Page Camera"),
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
              // FloatingActionButton(
              //   onPressed: () {},
              //   backgroundColor: CustomColors.greenText,
              //   child: Icon(Icons.edit),
              // ),
              // FloatingActionButton(
              //   onPressed: () {},
              //   backgroundColor: CustomColors.greenDark,
              //   child: Icon(Icons.camera_alt),
              // )
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
                  "Missed Calls",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.orange),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListCallOverview(
                  status: 1,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  "Other Calls",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.greenText),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListCallOverview(
                  status: 2,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
