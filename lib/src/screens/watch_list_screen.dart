import 'package:flutter/material.dart';
import 'package:motivewave/src/service/service_home.dart';
import 'package:motivewave/src/shared_state/account.dart';
import 'package:motivewave/src/shared_state/app_state.dart';
import 'package:motivewave/src/shared_state/watchlist.dart';
import 'package:motivewave/src/widgets/ticker_card.dart';
import 'package:provider/provider.dart';

class WatchListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext ctx) {
    final appState = ctx.read<AppState>();
    final watchlists = ServiceHome.workspace!.watchlists;
    var wl = appState.activeWatchList; // This is necessary to resolve the activeWatchList the first time.
    if (wl == null) print("no watchlist!");
    else print("watch list: ${wl.name}");
    return ValueListenableBuilder<WatchList?>(
      valueListenable: appState.activeWatchListValue,
      builder: (ctx, watchList, child) {
        return Scaffold(
          drawer: Drawer(child: ListView.separated(
            separatorBuilder: (ctx, index) => Divider(),
            itemCount: watchlists.all.length,
            itemBuilder: (ctx, index) => ListTile(
              title: Text(watchlists.all[index].name),
              onTap: () {
                appState.activeWatchList = watchlists.all[index];
                Navigator.pop(ctx);
              }
            ),

          )),

          appBar: AppBar(title: Text(watchList == null ? "" : watchList.name)),
          body: Container(child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Expanded(child: _WatchList(watchList))])),
        );

      }
    );
  }
}

class _WatchList extends StatelessWidget {
  final WatchList? watchList;
  _WatchList(this.watchList);

  @override
  Widget build(BuildContext ctx) {
    var group = watchList == null ? TickerGroup("", []) : watchList!.groups[0];
    var tickers = ServiceHome.workspace!.tickers;
    return ListView.builder(
      itemCount: group.tickers.length,
      itemBuilder: (ctx, index) => ListTile(
        title: TickerCard(group.tickers[index])
      )
    );
  }
}
