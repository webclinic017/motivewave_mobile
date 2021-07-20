import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:motivewave/src/common/colors.dart';
import 'package:motivewave/src/common/style_helper.dart';
import 'package:motivewave/src/common/styles.dart';
import 'package:motivewave/src/shared_state/app_state.dart';
import 'package:motivewave/src/shared_state/ticker.dart';
import 'package:motivewave/src/shared_state/watchlist.dart';


class TickerCardList extends StatefulWidget
{
  final WatchList watchList;
  TickerCardList(this.watchList, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TickerCardListState();
}

class _TickerCardListState extends State<TickerCardList>
{
  _TickerCardListState();

  @override
  Widget build(BuildContext ctx) {
    var group = widget.watchList.groups.first;
    var tkrs = List<Ticker>.from(group.tickers);

    return Container(padding: EdgeInsets.fromLTRB(15, 0, 15, 0),child: ReorderableListView(
      onReorder: (oi, ni) {
        if (ni>oi) ni--;
        if (ni > tkrs.length) return;
        tkrs.insert(ni, tkrs.removeAt(oi));
        group.tickers = tkrs;
        setState(() {});
      },
      children: <Widget>[
        for(final tkr in group.tickers)
          Dismissible(key: Key(tkr.instrument.key),
            direction: DismissDirection.endToStart,
            child: Card(
              key: ValueKey(tkr),
              elevation: 2,
              child: TickerCard(tkr)),
            onDismissed: (direction) {
              tkrs.remove(tkr);
              group.tickers = tkrs;
              setState(() {});
            },
            background: Container(padding: EdgeInsets.all(15), alignment: Alignment.centerRight, color: Colors.red, child: Text("Delete", style: headerStyle)),

          ),
      ],
    ));

  }
}

class TickerCard extends StatelessWidget
{
  final Ticker ticker;
  TickerCard(this.ticker);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: kTileColor,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            // Symbol and Title
            Expanded(flex: 6, child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(ticker.instrument.symbol, style: kTxtWLSymbol),
                SizedBox(height: 4.0),
                Text(ticker.instrument.title??"", style: kTxtWLTitle, maxLines: 1,)
              ],
            )),

            // Last Price and Change
            Expanded(flex: 5, child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                BlocBuilder(
                  bloc: ticker.last,
                  builder: (ctx, last) => Text(ticker.format("last"), textAlign: TextAlign.end, style: adjustUpDownColor(kTxtPrice, ticker.change.state)),
                ),
                SizedBox(height: 4.0),
                BlocBuilder(
                  bloc: ticker.change,
                  builder: (ctx, last) => Text(ticker.format("change") + "(" + ticker.format("changePer") + ")", textAlign: TextAlign.end, style: adjustUpDownColor(kTxtWL, ticker.change.state))
                )
              ],
            )),

            // High/Low
            Expanded(flex: 4, child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                BlocBuilder(
                  bloc: ticker.high,
                  builder: (ctx, last) => Text("Hi: " + ticker.format("high"), textAlign: TextAlign.end, style: kTxtWL),
                ),
                SizedBox(height: 4.0),
                BlocBuilder(
                    bloc: ticker.low,
                    builder: (ctx, last) => Text("Lo: " + ticker.format("low"), textAlign: TextAlign.end, style: kTxtWL)
                )
              ],
            )),
          ],
        ),
      ),
      onPressed: () {
      },
    );
  }


}