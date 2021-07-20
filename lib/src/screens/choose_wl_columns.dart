import 'package:flutter/material.dart';
import 'package:motivewave/src/settings/watch_list_settings.dart';
import 'package:motivewave/src/shared_state/columns.dart';
import 'package:motivewave/src/util/enums.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:provider/provider.dart';

class ChooseColumnsScreen extends StatelessWidget {

  final selectedButton = OutlinedButton.styleFrom(primary: Colors.white, backgroundColor: Colors.blue);
  final unselectedButton = OutlinedButton.styleFrom(primary: Colors.white);

  @override
  Widget build(BuildContext ctx) {
    var settings = ctx.watch<WatchListSettings>();
    // Add reorderable list of columns
    // Need Expanded and shrinkWrap to embed this in a Column
    var vcols = List<String>.from(settings.columns);
    // Display the columns in the order from the visible columns.  Add the others at the end
    var cols = <ColumnInfo>[];
    for(var p in vcols) {
      ColumnInfo? col = TickerColumns.find(p);
      if (col != null) cols.add(col);
    }
    for(var col in TickerColumns.ALL) {
      if (!cols.contains(col)) cols.add(col);
    }

    var list = ReorderableListView(
      onReorder: (oi, ni) {
        if (ni>oi) ni--;
        if (ni > vcols.length) return;
        vcols.insert(ni, vcols.removeAt(oi));
        settings.set("columns", vcols);
      },
      children: <Widget>[
        for(final col in cols)
          Card(
            key: ValueKey(col),
            elevation: 2,
            child: ListTile(
              leading: Checkbox(value: vcols.contains(col.property), onChanged: (b) {
                if (b == null) return;
                if (b) vcols.add(col.property);
                else vcols.remove(col.property);
                settings.set("columns", vcols);
              }),
              title: Text(col.label),
            ),
          ),
      ],
    );

    return Scaffold(
      appBar: AppBar(leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(ctx)),
                     title: Text("Table Columns")),
      // Need a SingleChildScrollView for the ReorderableListView
      body: Container(margin: EdgeInsets.all(10), child: list)
    );
  }
}