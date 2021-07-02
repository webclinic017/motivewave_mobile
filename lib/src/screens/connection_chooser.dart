import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:motivewave/src/service/connection_info.dart';
import 'package:motivewave/src/service/service.dart';
import 'package:motivewave/src/service/service_info.dart';
import 'package:motivewave/src/shared_state/workspace.dart';
import 'package:motivewave/src/util/dialog.dart';
import 'package:motivewave/src/util/enums.dart';
import 'package:motivewave/src/util/util.dart';
import 'package:provider/provider.dart';


class ConnectionChooser extends StatefulWidget {
  final ValueSetter<ServiceType> add;
  final List<ServiceType> options;
  const ConnectionChooser(this.options, this.add, {Key key}) : super(key: key);

  @override
  _ConnectionChooserState createState() => _ConnectionChooserState();
}

class _ConnectionChooserState extends State<ConnectionChooser> {
  ServiceType _service;
  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> items = [];
    items.add(DropdownMenuItem(child: Text("Choose Connection"), value: null));
    for(var s in widget.options) {
      items.add(DropdownMenuItem(child: Text(s.asString()), value: s));
    }

    return Container(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: DropdownButton(
                    value: _service,
                    items: items,
                    onChanged: (value) {
                      setState(() { _service = value; });
                    }),
              ),
              Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  children: [
                    ElevatedButton(
                        onPressed: _service == null ? null : () { widget.add(_service); Navigator.of(context).pop();  },
                        child: Text("Add", style: Theme.of(context).textTheme.button)
                    ),
                    ElevatedButton(
                        onPressed: () { Navigator.of(context).pop();  },
                        child: Text("Cancel", style: Theme.of(context).textTheme.button)
                    ),
                  ]
              )
            ]
        ));
  }
}