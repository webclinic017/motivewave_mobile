import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:motivewave/src/screens/connection_chooser.dart';
import 'package:motivewave/src/service/connection_info.dart';
import 'package:motivewave/src/service/service.dart';
import 'package:motivewave/src/service/service_info.dart';
import 'package:motivewave/src/shared_state/workspace.dart';
import 'package:motivewave/src/util/dialog.dart';
import 'package:motivewave/src/util/enums.dart';
import 'package:motivewave/src/util/util.dart';
import 'package:provider/provider.dart';

class WorkspaceScreen extends StatefulWidget {
  final Workspace workspace;
  WorkspaceScreen(this.workspace, {Key key}) : super(key: key);

  @override
  _WorkspaceScreenState createState() => _WorkspaceScreenState(workspace);
}

class _WorkspaceScreenState extends State<WorkspaceScreen> {
  _WorkspaceScreenState(this.workspace);

  final _formKey = GlobalKey<FormState>();
  Workspace workspace;
  final _nameCtrl = TextEditingController();
  bool showNoConnectionsError = false;

  @override
  void dispose()
  {
    _nameCtrl.dispose();
    super.dispose();
  }

  void _save(BuildContext ctx)
  {
    if (_formKey.currentState.validate() && workspace.connections.isNotEmpty) {
      var workspaces = ctx.read<Workspaces>();
      var ws = Workspace(_nameCtrl.text, workspace.wsBucket, workspace.connections);
      ws.loadDefaults();
      if (widget.workspace.name == "") workspaces.add(ws);
      //else workspaces.replace(widget.workspace, ws);
      Navigator.of(context).pop();
      log.info("saving workspaces");
      workspaces.save();
      return;
    }
    if (workspace.connections.isEmpty) { // Show error message to add at least 1 connection
      setState(() => showNoConnectionsError=true);
    }
  }

  @override
  Widget build(BuildContext ctx) {

    final nameField = TextFormField(
      controller: _nameCtrl,
      inputFormatters: [
        //Only letters are allowed
        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z0-9-_\\s()]*")),
      ],
      maxLength: 50,
      maxLengthEnforced: true,
      validator: (value) {
        if (_nameCtrl.text.isEmpty) return 'Enter Workspace Name';
        return null;
      },
      decoration: InputDecoration(hintText: "Name"),
    );
    _nameCtrl.text = workspace.name;
    final connections = workspace.connections;
    // Determine remaining service options that can be added to this workspace
    var existing = List<ServiceType>();
    for(var con in connections) existing.add(con.conn.type);
    var available = List<ServiceType>();
    for(var s in ServiceType.values) {
      if (!existing.contains(s)) available.add(s);
    }
    Widget listArea;
    if (showNoConnectionsError && existing.isEmpty) {
      listArea = Container(padding: EdgeInsets.fromLTRB(20, 10, 0, 20), child: Text("Please add a connection", style: TextStyle(color: Colors.red)));
    }
    else {
      listArea = Expanded(child: ListView.separated(
        itemCount: connections.length,
        separatorBuilder: (ctx, index) => Divider(),
        itemBuilder: (ctx, index) => ListTile(
          trailing:
          IconButton(
            icon: Icon(Icons.remove_circle_outline),
            onPressed: () {
              log.info('updating workspace: ${connections[index].name}');
              final ws = workspace;
              var list = List<ServiceInfo>.from(ws.connections);
              list.remove(connections[index]);
              setState(() => workspace = Workspace(_nameCtrl.text, ws.wsBucket, list));
            }),
          title: Text(connections[index].name),
        )
      ));
    }

    // Dynamically display the Add Connection button.  We don't need to display this if there are no more available connections.
    List<Widget> children = [
      Form(key: _formKey,
          child: nameField),
      SizedBox(height: 15),
      Container(margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
          child: Wrap(spacing: 10, children: [Icon(Icons.wifi_rounded), Text('Connections', style: Theme.of(ctx).textTheme.headline6)])),
      listArea,
    ];
    if (available.isNotEmpty) {
      children.add(ElevatedButton.icon(label: Text("Add Connection"), icon: Icon(Icons.add),
        onPressed: () {
          showDialog(context: ctx,
            builder: (BuildContext ctx) => Dialog (
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              elevation: 0,
              child: ConnectionChooser(available, (srvc) {
                final ws = workspace;
                var connections = List<ServiceInfo>.from(ws.connections);
                connections.add(ServiceInfo(ConnectionInfo(srvc)));
                setState(() => workspace = Workspace(_nameCtrl.text, ws.wsBucket, connections));
              })
            )
          );
        })
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.workspace.name == "" ? 'Add Workspace' : 'Edit Workspace'),
          actions: [TextButton(child: Text("Save"), onPressed: () => _save(ctx))],
        ),
        body:  Container(
          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children
          )),
    );
  }
}

