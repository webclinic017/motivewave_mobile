import 'package:flutter/material.dart';
import 'package:motivewave/src/shared_state/account.dart';
import 'package:provider/provider.dart';

class AccountsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text('Accounts')),
      body: Container(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Expanded(child: _AccountsList())])),
    );
  }
}

class _AccountsList extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    var accounts = ctx.watch<Accounts>();
    var list = accounts.accounts;

    return ListView.separated(
      separatorBuilder: (ctx, index) => Divider(),
      itemCount: list.length,
      itemBuilder: (ctx, index) => ListTile(
        title: Text(list[index].name),
      ),
    );
  }
}
