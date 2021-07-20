

import 'package:flutter/material.dart';
import 'package:motivewave/src/common/colors.dart';
import 'package:motivewave/src/common/styles.dart';
import 'package:motivewave/src/service/service.dart';
import 'package:motivewave/src/service/service_home.dart';
import 'package:motivewave/src/shared_state/instrument_info.dart';
import 'package:motivewave/src/shared_state/workspace.dart';
import 'package:motivewave/src/util/util.dart';
import 'package:provider/provider.dart';


class SymbolSearchDelegate extends SearchDelegate<InstrumentInfo?> {

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext ctx) {
    print("buildResults: $query");
    return _build(ctx);
  }

  @override
  Widget buildSuggestions(BuildContext ctx) {
    print("buildSuggestions: $query");
    return _build(ctx);
  }

  Widget _build(BuildContext ctx) {
    if (empty(query)) {
      Service srvc = ServiceHome.services[0];
      var instruments = srvc.descriptor.suggestions;
      print("instruments: ${instruments.length}");
      return
      Container(child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Text("Suggestions", style: headerStyle), Spacer()]),
        Expanded(child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.8,
            children: List.generate(instruments.length, (index) {
              var instr = instruments[index];
              return Card(
                key: ValueKey(instr),
                elevation: 2,
                child: MaterialButton(
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
                            Text(instr.symbol, style: kTxtWLSymbol),
                            SizedBox(height: 4.0),
                            Text(instr.title??"", style: kTxtWLTitle, maxLines: 1,),
                            SizedBox(height: 4.0),
                            Text(formatMMDDYYYY(instr.expires), style: kTxtWLTitle, maxLines: 1,)
                          ],
                        )),
                      ],
                    ),
                  ),
                  onPressed: () {
                  },
                )

              );
            })))]
      ));
    }



    return FutureBuilder<List<InstrumentInfo>>(
      future: _search(ctx),
      builder: (ctx, snapshot) {
        var data = snapshot.data;
        if (data == null) return Container();
        if (snapshot.connectionState == ConnectionState.done) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(data[index].symbol),
                onTap: () {
                  close(context, data[index]);
                },
              );
            },
            itemCount: data.length,
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Future<List<InstrumentInfo>> _search(BuildContext ctx) async {
    // TODO: consider allowing the user to choose the service
    Service srvc = ServiceHome.services[0];
    print("searching: " + query);
    return srvc.search(query, null, null, null, null);
  }
}