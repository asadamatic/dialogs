import 'package:dialogs/dialogs/dialogs.dart';
import 'package:dialogs/dialogs/message_dialog.dart';
import 'package:flutter/material.dart';

class MessageDialogExample extends StatefulWidget {
  MessageDialogExample({Key key}) : super(key: key);

  @override
  _MessageDialogExampleState createState() => _MessageDialogExampleState();
}

class _MessageDialogExampleState extends State<MessageDialogExample> {
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialogs'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(bottom: 60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.blue,
                  ),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  final choice = ChoiceDialog(
                    dialogBackgroundColor: Colors.white,
                  );
                  choice.show(context);
                  // ChoiceDialog().show(context,
                  //     barrierColor: Colors.black, barrierDismissible: true);
                },
                child: Text('Show Choice Dialog')),
            TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.blue,
                  ),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () async {
                  MessageDialog messageDialog = MessageDialog(
                      dialogBackgroundColor: Colors.white,
                      buttonOkColor: Colors.red,
                      title: 'Dialog Title',
                      titleColor: Colors.black,
                      message: 'Dialog Message',
                      messageColor: Colors.black,
                      buttonOkText: 'Ok',
                      dialogRadius: 15.0,
                      buttonRadius: 18.0,
                      iconButtonOk: Icon(Icons.one_k));
                  messageDialog.show(context, barrierColor: Colors.white);
                },
                child: Text(
                  'Show Message Dialog',
                )),
          ],
        ),
      ),
    );
  }
}
