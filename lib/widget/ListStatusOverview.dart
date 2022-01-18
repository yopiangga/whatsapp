import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/provider/PStatusOverview.dart';
import 'package:whatsapp/widget/WStatusOverview.dart';

class ListStatusOverview extends StatelessWidget {
  const ListStatusOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final statusOverview = Provider.of<PStatusOverview>(context);
    final allStatusOverview = statusOverview.statusOverviews;
    return Container(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: allStatusOverview
            .map((e) => WStatusOverview(
                  item: e,
                ))
            .toList(),
      ),
    );
  }
}
