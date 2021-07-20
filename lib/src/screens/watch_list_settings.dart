import 'package:flutter/material.dart';
import 'package:motivewave/src/settings/watch_list_settings.dart';
import 'package:motivewave/src/util/enums.dart';
import 'package:motivewave/src/common/styles.dart';
import 'package:provider/provider.dart';

class WatchListSettingsScreen extends StatelessWidget {

  final selectedButton = OutlinedButton.styleFrom(primary: Colors.white, backgroundColor: Colors.blue);
  final unselectedButton = OutlinedButton.styleFrom(primary: Colors.white);

  @override
  Widget build(BuildContext ctx) {
    var settings = ctx.watch<WatchListSettings>();
    bool card = settings.display == WatchListView.CARD;
    var rows = <Widget>[];
    // Layout
    rows.add(Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Text("Layout", style: headerStyle), Spacer(),
      OutlinedButton.icon(onPressed: () => settings.set("display", WatchListView.CARD), icon: Icon(Icons.view_agenda_sharp),
          label: Text("Card", style: TextStyle(fontSize: 16)), style: card ? selectedButton : unselectedButton),
      SizedBox(width: 10),
      OutlinedButton.icon(onPressed: () => settings.set("display", WatchListView.TABLE), icon: Icon(Icons.table_chart_sharp),
          label: Text("Table", style: TextStyle(fontSize: 16)), style: card ? unselectedButton : selectedButton)]));

    rows.add(Row(children: [Text("Table Columns", style: headerStyle), Spacer(),
      IconButton(icon: Icon(Icons.settings), onPressed: card ? null : () => Navigator.pushNamed(ctx, "/wl_columns"))]));


    return Scaffold(
      appBar: AppBar(leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(ctx)),
                     title: Text("Watch List Settings")),
      // Need a SingleChildScrollView for the ReorderableListView
      body: Container(margin: EdgeInsets.all(10), child: Column(children: rows))
    );
  }
}