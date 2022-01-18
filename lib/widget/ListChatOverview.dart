import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/provider/PChatOverview.dart';
import 'package:whatsapp/widget/WChatOverview.dart';

class ListChatOverview extends StatelessWidget {
  int unread;
  ListChatOverview({Key? key, this.unread = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chatOverview = Provider.of<PChatOverview>(context);
    final allChatOverview = chatOverview.chatOverviews;
    return Container(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
          children: allChatOverview
              .map((e) =>
                  e.unread > 0 && unread == 1 || e.unread == 0 && unread == 0
                      ? WChatOverview(
                          item: e,
                        )
                      : Container())
              .toList()),
    );
  }
}
