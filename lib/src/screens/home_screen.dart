import 'package:flutter/material.dart';
import 'package:motivewave/src/screens/workspace_connections_screen.dart';
import 'package:motivewave/src/service/service_home.dart';
import 'package:motivewave/src/shared_state/app_state.dart';
import 'package:motivewave/src/shared_state/workspace.dart';
import 'package:motivewave/src/util/util.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    // Watch for changes to the initialized state of the workspaces
    var workspaces = ctx.watch<Workspaces>();
    var appState = ctx.watch<AppState>();

    List<Widget> children = [Image.asset('images/logo_name' + (isDark(ctx) ? '_dark' : '') + '.png', width: 250)];
    if (workspaces.initialized && appState.initialized) { // Need to wait until the workspaces are initialized, just display logo...
      if (workspaces.defaultWs != null) {
        // We already have a configured workspace, forward to the login screen(s) if appropriate
        ServiceHome.workspace = workspaces.defaultWs;
        ServiceHome.connect(ctx);
      }
      else {
        children.add(SizedBox(height: 20));
        children.add(ElevatedButton(child: Text("Get Started"),
            onPressed: () {
              Navigator.push(ctx, MaterialPageRoute(builder: (context) => WorkspaceConnectionsScreen(Workspace("default", "", []))));
            }));
      }
    }

    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children)));
  }
}
