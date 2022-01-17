import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/provider/PCallOverview.dart';
import 'package:whatsapp/widget/WCallOverview.dart';

class ListCallOverview extends StatelessWidget {
  const ListCallOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final callOverview = Provider.of<PCallOverview>(context);
    final allCallOverview = callOverview.callOverviews;
    return Container(
      child: Column(
        children: allCallOverview
            .map((e) => WCallOverview(
                  item: e,
                ))
            .toList(),
      ),
    );
  }
}
