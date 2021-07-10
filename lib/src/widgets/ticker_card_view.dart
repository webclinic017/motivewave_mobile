import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:motivewave/src/common/colors.dart';
import 'package:motivewave/src/common/style_helper.dart';
import 'package:motivewave/src/common/styles.dart';
import 'package:motivewave/src/service/service_home.dart';
import 'package:motivewave/src/shared_state/ticker.dart';
import 'package:motivewave/src/shared_state/watchlist.dart';
import 'package:motivewave/src/util/observable.dart';

class TickerCardView extends StatelessWidget
{
  @override
  Widget build(BuildContext ctx) {
    var watchList = ctx.read<WatchList>();
    var group = watchList.groups.first;
    return ListView.builder(
      itemCount: group.tickers.length,
      itemBuilder: (ctx, index) => ListTile(title: TickerCard(group.tickers[index]))
    );
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
            Expanded(flex: 4, child: Column(
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
/*
        // Trigger fetch event.
        BlocProvider
            .of<ProfileBloc>(context)
            .add(FetchProfileData(symbol: data.symbol));

        // Send to Profile.
        Navigator.push(context, MaterialPageRoute(builder: (_) => Profile(symbol: data.symbol))); */
      },
    );
  }


}