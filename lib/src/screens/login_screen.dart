import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motivewave/src/service/service.dart';
import 'package:motivewave/src/service/service_info.dart';
import 'package:motivewave/src/shared_state/credentials.dart';
import 'package:motivewave/src/util/enums.dart';
import 'package:motivewave/src/util/util.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  final Service service;
  LoginScreen(this.service, {Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${widget.service.type.asString()} Login'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ Image.asset('images/logo_name' + (isDark(ctx) ? '_dark' : '') + '.png', width: 175),
            Container(margin: EdgeInsets.fromLTRB(20, 30, 20, 0), child: LoginForm(widget.service)) ],
        ),
      );
  }
}

class LoginForm extends StatefulWidget {
  final Service service;
  const LoginForm(this.service, {Key? key}) : super(key: key);

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  // This key uniquely identifies the Form widget and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  final _loginIdCtrl = TextEditingController(text: "motivewaveapi");
  final _passwordCtrl = TextEditingController(text: "pass");
  String? _connection;

  @override
  void dispose()
  {
    _loginIdCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  _connect() async {
    var state = _formKey.currentState;
    if (state == null || !state.validate()) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Connecting')));
    print("Calling Connect");
    var result = await widget.service.doConnect(Credentials(username: _loginIdCtrl.text, password: _passwordCtrl.text, connection: _connection));
    if (result.success) {
      widget.service.onConnected();
      Navigator.pushReplacementNamed(context, '/watchlist');
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result.message ??"")));
    }
  }

  @override
  Widget build(BuildContext context) {
    var desc = widget.service.descriptor;
    if (_connection == null) _connection = desc.connections[0].value;

    List<Widget> fields = [];
    if (desc.supportsUsername) {
      fields.add(TextFormField(
        controller: _loginIdCtrl,
        validator: (value) {
          if (empty(value)) return 'Enter Login ID';
          return null;
        },
        decoration: InputDecoration(hintText: "Login ID")));
    }
    if (desc.supportsPassword) {
      fields.add(TextFormField(
        controller: _passwordCtrl,
        obscureText: true,
        validator: (value) {
          if (empty(value)) return 'Enter Password';
          return null;
        },
        decoration: InputDecoration(hintText: "Password"),
      ));
    }
    if (desc.supportsConnectionChoice) {
      List<DropdownMenuItem<String>> items = [];
      for(var nvp in desc.connections) {
        items.add(DropdownMenuItem(child: Text(nvp.key), value: nvp.value));
      }
      fields.add(DropdownButton<String?>(
        value: _connection,
        items: items,
        onChanged: (value) => setState(() { _connection = value; })));
    }

    // TODO: add options like skip if appropriate, we would did with a Row or Wrap
    fields.add(ElevatedButton(
      onPressed: () => _connect(),
      child: Text('Login'),
    ));

    List<Widget> children = [];
    for(var w in fields) {
      if (children.length > 0) children.add(SizedBox(height: 25));
      children.add(w);
    }

    return Form(key: _formKey,
      child: Column(
        //direction: Axis.vertical,
        //spacing: 25,
        children: children)
      );
  }
}