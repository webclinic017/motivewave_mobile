import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:motivewave/src/screens/accounts_screen.dart';
import 'package:motivewave/src/screens/choose_wl_columns.dart';
import 'package:motivewave/src/screens/home_screen.dart';
import 'package:motivewave/src/screens/watch_list_screen.dart';
import 'package:motivewave/src/screens/watch_list_settings.dart';
import 'package:motivewave/src/screens/workspaces_screen.dart';
import 'package:motivewave/src/service/service_home.dart';
import 'package:motivewave/src/shared_state/app_state.dart';
import 'package:motivewave/src/shared_state/watchlist.dart';
import 'package:motivewave/src/shared_state/workspace.dart';
import 'package:motivewave/src/transition/slide_transitions.dart';
import 'package:motivewave/src/util/symbol_util.dart';
import 'package:motivewave/src/util/util.dart';
import 'package:provider/provider.dart';

void main() async {

  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    debugPrint('${record.level.name}: ${record.time}: ${record.message}');
  });
  log.info("Starting Application");

  runApp(MotiveWave());
}

class MotiveWave extends StatefulWidget {
  @override
  _MotiveWaveState createState() => _MotiveWaveState();
}

class _MotiveWaveState extends State<MotiveWave> {
  final appState = AppState();

  @override
  void initState() {
    super.initState();
    SymbolUtil.init();
    ServiceHome.init();
    appState.load();
    ServiceHome.workspaces.load(); // This will load asynchronously
  }

  @override
  Widget build(BuildContext context) {
    return new MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ServiceHome.workspaces),
        ChangeNotifierProvider.value(value: ServiceHome.accounts),
        ChangeNotifierProvider.value(value: ServiceHome.balances),
        ChangeNotifierProvider.value(value: appState),
        ValueListenableProvider<Workspace?>.value(value: ServiceHome.workspaces.defaultWsValue),
      ],
    child: MaterialApp(
      title: 'MotiveWave',
      theme: ThemeData.dark().copyWith(inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)))),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        //'/': (context) => LoginScreen(),
        '/workspaces': (context) => WorkspacesScreen(),
        '/accounts': (context) => WorkspaceContext((ctx, w) => AccountsScreen()),
        '/watchlist': (context) => WorkspaceContext((ctx, w) => WatchListScreen()),
      },
      onGenerateRoute: (settings) {
        if (settings.name == "/wl_settings") {
          return SlideLeftRoute(WorkspaceContext((ctx, w) => WatchListSettingsScreen()));
        }
        if (settings.name == "/wl_columns") {
          return SlideLeftRoute(WorkspaceContext((ctx, w) => ChooseColumnsScreen()));
        }
        return null;
      }

    ));
  }

  @override
  void dispose() {
    super.dispose();
    log.info("saving workspaces");
    ServiceHome.workspaces.save();
    appState.save();
  }
}

// Provides access to variables in the workspace
class WorkspaceContext extends StatelessWidget
{
  Widget Function(BuildContext ctx, Widget? w) builder;
  WorkspaceContext(this.builder);

  @override
  Widget build(BuildContext ctx) {
    // Watch for changes to the initialized state of the workspaces
    var appState = ctx.watch<AppState>();
    var ws = ServiceHome.workspace!;
    var wlSettings = ws.config.watchList;
    appState.activeWatchList; // this is necessary to set the default watch list if not set...

    return new MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: wlSettings),
          Provider.value(value: ws),
          ValueListenableProvider<WatchList?>.value(value: appState.activeWatchListValue),
        ],
        builder: builder
    );
  }

}


