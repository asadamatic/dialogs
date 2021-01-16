import 'package:dialogs/ChoiceDialog/dialogs.dart';
import 'package:flutter/material.dart';

class ChoiceDialogExample extends StatefulWidget {
  ChoiceDialogExample({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ChoiceDialogExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choice Dialog'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(bottom: 60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (buildContext) => ChoiceDialog());
                },
                child: Text('Show Dialog')),
          ],
        ),
      ),
    );
  }
}
