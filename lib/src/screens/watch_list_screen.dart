// ignore: unnecessary_non_null_assertion
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:motivewave/src/settings/watch_list_settings.dart';
import 'package:motivewave/src/shared_state/app_state.dart';
import 'package:motivewave/src/shared_state/instrument_info.dart';
import 'package:motivewave/src/shared_state/watchlist.dart';
import 'package:motivewave/src/shared_state/workspace.dart';
import 'package:motivewave/src/util/enums.dart';
import 'package:motivewave/src/widgets/search.dart';
import 'package:motivewave/src/widgets/ticker_card_view.dart';
import 'package:motivewave/src/widgets/ticker_table.dart';
import 'package:provider/provider.dart';

class WatchListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      /*drawer: Drawer(child: ListView.separated(
        separatorBuilder: (ctx, index) => Divider(),
        itemCount: ws.watchlists.all.length,
        itemBuilder: (ctx, index) => ListTile(
          title: Text(ws.watchlists.all[index].name),
          onTap: () {
            appState.activeWatchList = ws.watchlists.all[index];
            Navigator.pop(ctx);
          }
        ),
      )),*/

      appBar: AppBar(
          title: WatchListTitle(),
          // list_rounded, split_screen, storage, table_chart_sharp
          actions: [
            PrevButton(), NextButton(),
            IconButton(icon: Icon(Icons.search), onPressed: () {
              final instr = showSearch<InstrumentInfo?>(context: ctx, delegate: SymbolSearchDelegate());
              print("instrument: ${instr}");
            }),
            IconButton(icon: Icon(Icons.settings), onPressed: () => Navigator.pushNamed(ctx, "/wl_settings"))]
      ),
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Expanded(child: WLPageView())]))
    );
  }
}

class NextButton extends StatelessWidget
{
  @override
  Widget build(BuildContext ctx) {
    var wl = ctx.watch<WatchList?>();
    var ws = ctx.watch<Workspace>();
    var appState = ctx.read<AppState>();
    var all = ws.watchlists.all;
    var next = (wl == null || all.last == wl) ? null : all[all.indexOf(wl)+1];
    return IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: next == null ? null : () => appState.activeWatchList = next);
  }
}

class PrevButton extends StatelessWidget
{
  @override
  Widget build(BuildContext ctx) {
    var wl = ctx.watch<WatchList?>();
    var ws = ctx.watch<Workspace>();
    var appState = ctx.read<AppState>();
    var all = ws.watchlists.all;
    var prev = (wl == null || all.first == wl) ? null : all[all.indexOf(wl)-1];
    return IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: prev == null ? null : () => appState.activeWatchList = prev);
  }
}

class WatchListTitle extends StatelessWidget
{
  @override
  Widget build(BuildContext ctx) {
    var wl = ctx.watch<WatchList?>();
    return Text(wl == null ? "" : wl.name);
  }
}

class WLPageView extends StatefulWidget {
  @override
  _WLPageViewState createState() => _WLPageViewState();
}

class _WLPageViewState extends State<WLPageView> {

  late PageController pageController;
  ScrollController? activeScrollController;
  Drag? drag;

  //These variables To detect if we are at the
  //top or bottom of the list.
  late bool atTheTop;
  late bool atTheBottom;

  @override
  void initState() {
    super.initState();
    atTheTop = true;
    atTheBottom = false;
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void handleDragStart(DragStartDetails details, ScrollController scrollController)
  {
    if (scrollController.hasClients) {
      if (scrollController.position.pixels == scrollController.position.minScrollExtent) atTheTop = true;
      else if (scrollController.position.pixels == scrollController.position.maxScrollExtent) atTheBottom = true;
      else {
        atTheTop = false;
        atTheBottom = false;
        activeScrollController = scrollController;
        drag = activeScrollController!.position.drag(details, disposeDrag);
        return;
      }
    }
    activeScrollController = pageController;
    drag = pageController.position.drag(details, disposeDrag);
  }

  void handleDragUpdate(DragUpdateDetails details, ScrollController scrollController) {
    if (details.delta.dx > 0 && atTheTop) {
      //Arrow direction is to the bottom. Swiping up.
      activeScrollController = pageController;
      drag?.cancel();
      drag = pageController.position.drag(
          DragStartDetails(globalPosition: details.globalPosition, localPosition: details.localPosition),
          disposeDrag);
    }
    else if (details.delta.dx < 0 && atTheBottom) {
      //Arrow direction is to the top.  Swiping down.
      activeScrollController = pageController;
      drag?.cancel();
      drag = pageController.position.drag(
          DragStartDetails(globalPosition: details.globalPosition, localPosition: details.localPosition), disposeDrag);
    }
    else {
      if (atTheTop || atTheBottom) {
        activeScrollController = scrollController;
        drag?.cancel();
        drag = scrollController.position.drag(
            DragStartDetails(globalPosition: details.globalPosition, localPosition: details.localPosition), disposeDrag);
      }
    }
    drag?.update(details);
  }

  void handleDragEnd(DragEndDetails details)
  {
    drag?.end(details);
    if (atTheTop) atTheTop = false;
    else if (atTheBottom)  atTheBottom = false;
  }

  void handleDragCancel() => drag?.cancel();

  void disposeDrag() => drag = null;

  @override
  Widget build(BuildContext ctx) {
    var ws = ctx.watch<Workspace>();
    var wlSettings = ctx.watch<WatchListSettings>();
    var lists = <Widget>[];
    var card = wlSettings.display == WatchListView.CARD;
    var appState = ctx.read<AppState>();
    var active = ctx.watch<WatchList?>();
    print("build page view: ${active!.name}");
    int ind = 0;
    for(var wl in ws.watchlists.all) {
      if (card) lists.add(TickerCardList(wl));
      else {
        lists.add(TickerTable(wl,handleDragStart, handleDragUpdate, handleDragEnd));
      }
      if (active == wl) ind = ws.watchlists.all.indexOf(wl);
    }

    print("active ind: $ind");
    pageController = PageController(initialPage: ind);
    return PageView(key: ValueKey(active),
      controller: pageController,
      children: lists,
      onPageChanged: (page) {
        appState.activeWatchList = ws.watchlists.all[page];
      }
    );
  }
}


