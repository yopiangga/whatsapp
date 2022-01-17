import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/provider/PChatOverview.dart';
import 'package:whatsapp/widget/WChatOverview.dart';

class ListChatOverview extends StatelessWidget {
  const ListChatOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chatOverview = Provider.of<PChatOverview>(context);
    final allChatOverview = chatOverview.chatOverviews;
    return Container(
      child: Column(
          children: allChatOverview
              .map((e) => WChatOverview(
                    item: e,
                  ))
              .toList()),
    );
  }
}
