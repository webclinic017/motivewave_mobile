import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:motivewave/src/screens/workspace_screen.dart';
import 'package:motivewave/src/shared_state/workspace.dart';
import 'package:motivewave/src/util/dialog.dart';
import 'package:motivewave/src/util/util.dart';
import 'package:provider/provider.dart';

class WorkspacesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text('Workspaces')),
      body: Container(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Expanded(child: _WorkspacesList())])),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(ctx, MaterialPageRoute(builder: (context) => WorkspaceScreen(Workspace("", "", []))));
        }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class _WorkspacesList extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    var workspaces = ctx.watch<Workspaces>();
    var list = workspaces.workspaces;

    return ListView.separated(
      separatorBuilder: (ctx, index) => Divider(),
      itemCount: list.length,
      itemBuilder: (ctx, index) => ListTile(
        trailing: Row(mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.remove_circle_outline),
              onPressed: () {
                workspaces.remove(list[index]);
              }),
            IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  Navigator.push(ctx, MaterialPageRoute(builder: (context) => WorkspaceScreen(list[index])));
                }),
        ]),
        title: Text(list[index].name),
      ),
    );
  }
}
