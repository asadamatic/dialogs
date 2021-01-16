library dialogs;

import 'package:flutter/material.dart';

class ChoiceDialog extends StatefulWidget {
  final Color dialogBackgroundColor, titleColor, messageColor;
  final String title, message, buttonOkText, buttonCancelText;
  final Function buttonOkOnPressed, buttonCancelOnPressed;
  final double dialogRadius, buttonRadius;
  final Icon iconButtonOk, iconButtonCancel;

  ChoiceDialog({
    ///[BackgroundColor] for dialog
    ///Set to [Colors.white] by default
    this.dialogBackgroundColor = Colors.white,

    ///[String] to be displayed as the [Title] on the dialog
    this.title = 'Dialog Title',

    ///[Color] for [Text] widget for [title] on the dialog
    this.titleColor,

    ///[String] to be displayed as the [Message] on the dialog
    this.message = 'Dialog Message',

    ///[Color] for [Text] widget for [message] on the dialog
    this.messageColor,

    ///[String] argument for the [Text] widget of [Ok] button on the dialog
    this.buttonOkText = 'Ok',

    ///[String] argument for the [Text] widget of [Cancel] button on the dialog
    this.buttonCancelText = 'Cancel',

    ///[onPressed] callback for [Ok] button on the dialog
    this.buttonOkOnPressed,

    ///[onPressed] callback for [Cancel] button on the dialog
    this.buttonCancelOnPressed,

    ///Set [dialogRadius] to 0.0 for rectangular borders
    this.dialogRadius = 15.0,

    ///Set [buttonRadius] radius to 0.0 for rectangular borders
    this.buttonRadius = 18.0,

    ///Icon for [Okay] button on the dialog
    this.iconButtonOk,

    ///Icon for [Cancel] button on the dialog
    this.iconButtonCancel,
  });

  @override
  _ChoiceDialogState createState() => _ChoiceDialogState();
}

class _ChoiceDialogState extends State<ChoiceDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget?.dialogRadius ?? 0.0)),
      backgroundColor: widget?.dialogBackgroundColor ?? Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget?.dialogRadius ?? 0.0),
          color: widget.dialogBackgroundColor ?? Colors.white,
        ),
        padding: const EdgeInsets.all(16.0),
        width: MediaQuery.of(context).size.width * .7,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 0.0, left: 3.0, right: 3.0, bottom: 4.0),
              child: Text(
                '${widget.title}',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: widget?.titleColor ?? Colors.black,
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 12.0, bottom: 16.0, right: 3.0, left: 3.0),
              child: Text(
                '${widget.message}',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: widget?.messageColor ?? Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 3.0, right: 3.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 5,
                    child: widget.iconButtonCancel == null
                        ? FlatButton(
                      child: Text(
                        '${widget.buttonCancelText}',
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 0.0),
                      color: Colors.white,
                      textColor: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              widget?.buttonRadius ?? 0.0),
                          side: BorderSide(
                            color: Theme.of(context).primaryColor,
                          )),
                      onPressed: widget.buttonCancelOnPressed,
                    )
                        : FlatButton.icon(
                      icon: widget.iconButtonCancel,
                      label: Text(
                        '${widget.buttonCancelText}',
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 0.0),
                      color: Colors.white,
                      textColor: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              widget?.buttonRadius ?? 0.0),
                          side: BorderSide(
                            color: Theme.of(context).primaryColor,
                          )),
                      onPressed: widget.buttonCancelOnPressed,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 5,
                    child: widget.iconButtonOk == null
                        ? FlatButton(
                      child: Text(
                        '${widget.buttonOkText}',
                      ),
                      textColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 0.0),
                      color: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            widget?.buttonRadius ?? 0.0),
                      ),
                      onPressed: widget.buttonOkOnPressed,
                    )
                        : FlatButton.icon(
                      icon: Icon(Icons.done),
                      label: Text(
                        '${widget.buttonOkText}',
                      ),
                      textColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 0.0),
                      color: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            widget?.buttonRadius ?? 0.0),
                      ),
                      onPressed: widget.buttonOkOnPressed,
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
