import 'package:flutter/material.dart';
import 'package:motivewave/src/service/service_home.dart';
import 'package:motivewave/src/shared_state/account.dart';
import 'package:motivewave/src/shared_state/app_state.dart';
import 'package:motivewave/src/shared_state/watchlist.dart';
import 'package:motivewave/src/util/enums.dart';
import 'package:motivewave/src/widgets/ticker_card_view.dart';
import 'package:motivewave/src/widgets/ticker_table.dart';
import 'package:provider/provider.dart';

class WatchListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext ctx) {
    final appState = ctx.read<AppState>();
    var ws = ServiceHome.workspace!;
    var wl = appState.activeWatchList; // This is necessary to resolve the activeWatchList the first time.
    var wlSettings = ws.config.watchList;

    return ValueListenableBuilder<WatchList?>(
      valueListenable: appState.activeWatchListValue,
      builder: (ctx, watchList, child) {
        Widget view = Text("");
        if (watchList != null) {
          view = MultiProvider(
            providers: [
              ChangeNotifierProvider.value(value: wlSettings),
              Provider.value(value: watchList),
            ],
            builder: (ctx, settings) {
              print("building view: ${watchList.name}");
              switch (wlSettings.display) {
                case WatchListView.CARD: return TickerCardView();
                case WatchListView.TABLE: return TickerTable();
              }
            }
          );
        }

        return Scaffold(
          drawer: Drawer(child: ListView.separated(
            separatorBuilder: (ctx, index) => Divider(),
            itemCount: ws.watchlists.all.length,
            itemBuilder: (ctx, index) => ListTile(
              title: Text(ws.watchlists.all[index].name),
              onTap: () {
                appState.activeWatchList = ws.watchlists.all[index];
                Navigator.pop(ctx);
              }
            ),
          )),

          appBar: AppBar(
                    title: Text(watchList == null ? "" : watchList.name),
                    // list_rounded, split_screen, storage, table_chart_sharp
                    actions: <Widget>[ IconButton(icon: Icon(Icons.table_rows_rounded))
                    ]),
          body: Container(child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Expanded(child: view)]))
        );
      }
    );
  }
}
