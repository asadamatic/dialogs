import 'package:dialogs/MessageDialog/message_dialog.dart';
import 'package:flutter/material.dart';

class MessageDialogExample extends StatefulWidget {
  MessageDialogExample({Key key}) : super(key: key);

  @override
  _MessageDialogExampleState createState() => _MessageDialogExampleState();
}

class _MessageDialogExampleState extends State<MessageDialogExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message Dialog'),
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
                      builder: (buildContext) => MessageDialog());
                },
                child: Text('Show Message Dialog')),
          ],
        ),
      ),
    );
  }
}
