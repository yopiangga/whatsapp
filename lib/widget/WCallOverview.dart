import 'package:flutter/material.dart';
import 'package:whatsapp/custom/CustomColors.dart';
import 'package:whatsapp/model/CallOverview.dart';

class WCallOverview extends StatelessWidget {
  CallOverview? item;

  WCallOverview({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Row(
        children: [
          Container(
            width: 65,
            height: 50,
            // color: Colors.amber,
            child: Stack(
              children: [
                Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: CircleAvatar(
                        radius: 25, // Image radius
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/images/user.jpg'),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 25,
                          backgroundImage: NetworkImage(item!.image),
                        ),
                      ),
                    )),
                Positioned(
                    right: 8,
                    top: 0,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: CustomColors.greenDark,
                          border: Border.all(width: 2, color: Colors.white)),
                      child: Center(
                          child: Text(
                        item!.countCall.toString(),
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                    ))
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item!.name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: CustomColors.greenDark),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    item?.status == 1
                        ? Icon(
                            Icons.call_received,
                            color: CustomColors.orange,
                            size: 14,
                          )
                        : Icon(
                            Icons.call_made,
                            color: CustomColors.greenLight,
                            size: 14,
                          ),
                    Icon(
                      Icons.watch_later_outlined,
                      color: CustomColors.greenDark.withOpacity(0.5),
                      size: 14,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      item!.time,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: CustomColors.greenDark.withOpacity(0.5)),
                    ),
                  ],
                )
              ],
            ),
          )),
          Container(
            child: Center(
              child: item!.type
                  ? Icon(
                      Icons.call,
                      color: CustomColors.greenLight,
                    )
                  : Icon(Icons.videocam, color: CustomColors.greenLight),
            ),
          )
        ],
      ),
    );
  }
}
