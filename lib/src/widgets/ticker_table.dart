

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:motivewave/src/common/style_helper.dart';
import 'package:motivewave/src/common/styles.dart';
import 'package:motivewave/src/service/service_home.dart';
import 'package:motivewave/src/settings/watch_list_settings.dart';
import 'package:motivewave/src/shared_state/columns.dart';
import 'package:motivewave/src/shared_state/ticker.dart';
import 'package:motivewave/src/shared_state/watchlist.dart';
import 'package:motivewave/src/util/observable.dart';
import 'package:provider/provider.dart';

final ROW_HEIGHT=30.0;
final TITLE_HEIGHT=25.0;

class TickerTable extends StatefulWidget {
  TickerTable({Key? key}) : super(key: key);

  @override
  _TickerTableState createState() => _TickerTableState();
}

class _TickerTableState extends State<TickerTable>
{
  bool asc = true;
  String? sortCol;
  final ColumnInfo symbolCol = TickerColumns.SYMBOL;
  late List<ColumnInfo> rightCols;
  late WatchListSettings settings;
  late WatchList watchList;
  late List<Ticker> tickers;

  @override
  Widget build(BuildContext ctx) {
    settings = ctx.watch<WatchListSettings>();
    watchList = ctx.read<WatchList>();
    rightCols = [];
    for(var prop in settings.columns) {
      if (prop == "symbol") continue;
      var col = TickerColumns.find(prop);
      if (col != null) rightCols.add(col);
    }

    tickers = List.from(watchList.groups.first.tickers);
    if (sortCol != null) {
      tickers.sort((t1, t2) {
        var p1 = t1.value(sortCol!);
        var p2 = t2.value(sortCol!);
        if (!(p1 is Comparable) || !(p2 is Comparable)) return 0; // this should not happen
        return asc ? p2.compareTo(p1) : p1.compareTo(p2);
      });
    }

    double right = 0;
    for(var col in rightCols) right += col.width;

    return Container(
      child: HorizontalDataTable(
        leftHandSideColumnWidth: symbolCol.width,
        rightHandSideColumnWidth: right,
        isFixedHeader: true,
        headerWidgets: titleRow(),
        leftSideItemBuilder: generateLeft,
        rightSideItemBuilder: generateRight,
        itemCount: tickers.length,
        rowSeparatorWidget: const Divider(color: Colors.grey, height: 1),
        leftHandSideColBackgroundColor: Colors.black45,
        rightHandSideColBackgroundColor: Colors.black87,
        verticalScrollbarStyle: const ScrollbarStyle(
          thumbColor: Colors.yellow,
          isAlwaysShown: true,
          thickness: 4.0,
          radius: Radius.circular(5.0),
        ),
        horizontalScrollbarStyle: const ScrollbarStyle(
          thumbColor: Colors.redAccent,
          isAlwaysShown: true,
          thickness: 4.0,
          radius: Radius.circular(5.0),
        ),
      ),
      height: MediaQuery.of(ctx).size.height,
    );
  }

  List<Widget> titleRow()
  {
    var headers = <Widget>[headerLabel(symbolCol)];
    for(var col in rightCols) headers.add(headerLabel(col));
    return headers;
  }

  Widget headerLabel(ColumnInfo col)
  {
    var label = col.label;
    if (col.sortable && sortCol == col.property) label += asc ? '↓' : '↑';

    var header = Container(
      child: Text(label, style: kTxtWLTitle),
      width: col.width,
      height: TITLE_HEIGHT,
      alignment: Alignment.center,
    );

    if (col.sortable) { // Wrap in a text button
      return TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: header,
        onPressed: () {
          setState(() {
            sortCol = col.property;
            asc = !asc;
          });
        },
      );
    }
    return header;
  }

  Widget generateLeft(BuildContext context, int index)
  {
    return Container(
      child: Text(tickers[index].instrument.symbol),
      width: symbolCol.width,
      height: ROW_HEIGHT,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget generateRight(BuildContext context, int index)
  {
    var ticker = tickers[index];
    var cells = <Widget>[];
    for(var col in rightCols) {
      Cubit? property = ticker.property(col.property);
      if (property == null) { cells.add(Text(col.property)); continue; }

      var builder = (ctx, last) => Text(ticker.format(col.property));
      if (property is Observable<double>) {
        if (["last", "bid", "ask"].contains(col.property)) {
          builder = (ctx, last) => Text(ticker.format(col.property), style: colorPrice(kTxtPrice, property));
        }
        else if (["change", "changePer"].contains(col.property)) {
          builder = (ctx, last) => Text(ticker.format(col.property), style: colorPosNeg(kTxtPrice, property));
        }
      }
      cells.add(Container(
        width: col.width,
        height: ROW_HEIGHT,
        alignment: col.align,
        child: BlocBuilder(bloc: property, builder: builder),
      ));
    }
    return Row(children: cells);
  }
}
