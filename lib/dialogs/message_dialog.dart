library dialogs;

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessageDialog extends StatelessWidget {
  /// [BackgroundColor] for dialog
  ///
  /// Set to [Colors.white] by default
  final Color? dialogBackgroundColor;

  /// [Color] for [Text] widget for [title] on the dialog
  ///
  final Color? titleColor;

  /// [Color] for [Text] widget for [message] on the dialog
  ///
  final Color? messageColor;

  /// [buttonOkColor] for [OkButton] background color
  ///
  final Color? buttonOkColor;

  /// [String] to be displayed as the [Title] on the dialog
  ///
  final String title;

  /// [String] to be displayed as the [Message] on the dialog
  ///
  final String message;

  /// [String] argument for the [Text] widget of [Ok] button on the dialog
  ///
  final String buttonOkText;

  /// [onPressed] callback for [Ok] button on the dialog
  ///
  Function? buttonOkOnPressed;

  ///Set [dialogRadius] to 0.0 for rectangular borders
  ///
  final double dialogRadius;

  ///Set [buttonRadius] radius to 0.0 for rectangular borders
  ///
  final double buttonRadius;

  ///Icon for [Okay] button on the dialog
  ///
  final Icon? iconButtonOk;

  MessageDialog({
    this.dialogBackgroundColor = Colors.white,
    this.buttonOkColor,
    this.title = 'Dialog Title',
    this.titleColor,
    this.message = 'Dialog Message',
    this.messageColor,
    this.buttonOkText = 'Ok',
    this.buttonOkOnPressed,
    this.dialogRadius = 15.0,
    this.buttonRadius = 18.0,
    this.iconButtonOk,
  });

  bool _isShowing = false;

  MessageDialog? _messageDialog;

  void dismiss(BuildContext? context) {
    if (_isShowing) {
      _isShowing = false;
      Navigator.pop(context!);
    }
  }

  void _initializeProgress() {
    _messageDialog = MessageDialog(
        dialogBackgroundColor: dialogBackgroundColor,
        buttonOkColor: buttonOkColor,
        title: title,
        titleColor: titleColor,
        message: message,
        messageColor: messageColor,
        buttonOkText: buttonOkText,
        buttonOkOnPressed: buttonOkOnPressed,
        dialogRadius: dialogRadius,
        buttonRadius: buttonRadius,
        iconButtonOk: iconButtonOk);
  }

  void show(BuildContext? context,
      {Color? barrierColor = Colors.white,
      bool? barrierDismissible = true}) async {
    if (!_isShowing) {
      _isShowing = true;
      if (_messageDialog == null) _initializeProgress();
      await showDialog(
        context: context!,
        useSafeArea: true,
        barrierDismissible: barrierDismissible!,
        builder: (context) => _messageDialog!,
        barrierColor: barrierColor!.withOpacity(.2),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(dialogRadius)),
      backgroundColor: dialogBackgroundColor ?? Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(dialogRadius),
          color: dialogBackgroundColor ?? Colors.white,
        ),
        padding: const EdgeInsets.all(16.0),
        // width: MediaQuery.of(context).size.width * .7,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ///Title for [Dialog]
            ///By default it's value is 'Dialog',
            /// you can change it using [title] parameter
            Padding(
              padding: const EdgeInsets.only(
                  top: 0.0, left: 3.0, right: 3.0, bottom: 4.0),
              child: Text(
                '$title',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: titleColor ?? Colors.black,
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold),
              ),
            ),

            ///Message for [Dialog]
            ///By default it's value is 'Dialog Message',
            /// you can change it using [message] parameter
            Padding(
              padding: const EdgeInsets.only(
                  top: 12.0, bottom: 16.0, right: 3.0, left: 3.0),
              child: Text(
                '$message',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: messageColor ?? Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
            ),

            ///This dialog contains two buttons
            ///Respectively for 'positive' and 'negative' actions
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 3.0, right: 3.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ///[ButtonCOk] refers to 'positive' action button
                  Expanded(
                    child: iconButtonOk == null
                        ? TextButton(
                            child: Text(
                              '$buttonOkText',
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(vertical: 0.0)),
                                backgroundColor:
                                    MaterialStateProperty.all(buttonOkColor),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(buttonRadius),
                                  ),
                                ),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            onPressed: buttonOkOnPressed as void Function()? ??
                                () {
                                  Navigator.pop(context);
                                },
                          )
                        : TextButton.icon(
                            icon: Icon(Icons.done),
                            label: Text(
                              '$buttonOkText',
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(vertical: 0.0)),
                                backgroundColor:
                                    MaterialStateProperty.all(buttonOkColor),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(buttonRadius),
                                  ),
                                ),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            onPressed: buttonOkOnPressed as void Function()? ??
                                () {
                                  Navigator.pop(context);
                                },
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
