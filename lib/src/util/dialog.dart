import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:motivewave/src/util/util.dart';


class MWDialog extends StatelessWidget {
  final String title;
  final Widget content;

  MWDialog(this.title, this.content);

  @override
  Widget build(BuildContext ctx) {
    log.info("building dialog: $title");
    return Dialog (
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            //color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [ BoxShadow(color: Colors.black, offset: Offset(0, 10), blurRadius: 10)]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
              SizedBox(height: 15),
              content,
              Align(alignment: Alignment.bottomRight,
              child: FlatButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: Text("Cancel", style: TextStyle(fontSize: 18))
              ))
            ],
          )
          )
        );

  }
}
