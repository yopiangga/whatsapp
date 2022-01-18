import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/provider/PCallOverview.dart';
import 'package:whatsapp/widget/WCallOverview.dart';

class ListCallOverview extends StatelessWidget {
  int status;
  ListCallOverview({Key? key, this.status = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final callOverview = Provider.of<PCallOverview>(context);
    final allCallOverview = callOverview.callOverviews;
    return Container(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: allCallOverview
            .map((e) => status == e.status
                ? WCallOverview(
                    item: e,
                  )
                : Container())
            .toList(),
      ),
    );
  }
}
