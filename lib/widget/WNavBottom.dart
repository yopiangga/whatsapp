import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/custom/CustomColors.dart';
import 'package:whatsapp/provider/PNabBottom.dart';

class WNavBottom extends StatelessWidget {
  String title;
  int index;
  int notify;
  TabController? controller;
  WNavBottom(
      {Key? key,
      this.title = "",
      this.index = 0,
      this.controller,
      this.notify = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PNavBottom>(
      builder: (context, value, _) => GestureDetector(
        onTap: () {
          controller?.animateTo(index);
          value.setMenuActive = index;
        },
        child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 29 / 100,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: value.isMenuActive == index
                            ? CustomColors.greenNotify
                            : CustomColors.greenNotify.withOpacity(0),
                        width: 3))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                index == 1 || index == 3
                    ? Container(
                        margin: EdgeInsets.only(left: 7),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Center(
                            child: Text(
                          notify > 9 ? "9+" : notify.toString(),
                          style: TextStyle(
                              fontSize: 12,
                              color: CustomColors.greenDark,
                              fontWeight: FontWeight.w600),
                        )),
                      )
                    : Container(
                        margin: EdgeInsets.only(left: 7),
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
              ],
            )),
      ),
    );
  }
}
