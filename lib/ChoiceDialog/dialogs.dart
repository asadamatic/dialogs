library dialogs;

import 'package:flutter/material.dart';

class ChoiceDialog extends StatefulWidget {
  final Color

      ///[BackgroundColor] for dialog
      ///Set to [Colors.white] by default
      dialogBackgroundColor,

      ///[Color] for [Text] widget for [title] on the dialog
      titleColor,

      ///[Color] for [Text] widget for [message] on the dialog
      messageColor,

      ///[Color] for [OkButton] background color
      buttonOkColor,

      ///This [Color] will be used for the border of [CancelButton]
      ///By default the border of [Cancel] button is same as the background color of [OkButton]
      buttonCancelBorderColor;
  final String

      ///[String] to be displayed as the [Title] on the dialog
      title,

      ///[String] to be displayed as the [Message] on the dialog
      message,

      ///[String] argument for the [Text] widget of [Ok] button on the dialog
      buttonOkText,

      ///[String] argument for the [Text] widget of [Cancel] button on the dialog
      buttonCancelText;
  final Function

      ///[onPressed] callback for [Ok] button on the dialog
      buttonOkOnPressed,

      ///[onPressed] callback for [Cancel] button on the dialog
      buttonCancelOnPressed;
  final double

      ///Set [dialogRadius] to 0.0 for rectangular borders
      dialogRadius,

      ///Set [buttonRadius] radius to 0.0 for rectangular borders
      buttonRadius;
  final Icon

      ///Icon for [Okay] button on the dialog
      iconButtonOk,

      ///Icon for [Cancel] button on the dialog
      iconButtonCancel;

  ChoiceDialog({
    this.dialogBackgroundColor = Colors.white,
    this.buttonOkColor,
    this.buttonCancelBorderColor,
    this.title = 'Dialog Title',
    this.titleColor,
    this.message = 'Dialog Message',
    this.messageColor,
    this.buttonOkText = 'Ok',
    this.buttonCancelText = 'Cancel',
    this.buttonOkOnPressed,
    this.buttonCancelOnPressed,
    this.dialogRadius = 15.0,
    this.buttonRadius = 18.0,
    this.iconButtonOk,
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
            ///Title for [Dialog]
            ///By default it's value is 'Dialog',
            /// you can change it using [title] parameter
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

            ///Message for [Dialog]
            ///By default it's value is 'Dialog Message',
            /// you can change it using [message] parameter
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

            ///This dialog contains two buttons
            ///Respectively for 'positive' and 'negative' actions
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 3.0, right: 3.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ///[ButtonCancel] refers to 'negative' action button
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
                            onPressed: widget?.buttonCancelOnPressed ??
                                () {
                                  Navigator.pop(context);
                                },
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
                                  color: widget?.buttonOkColor ??
                                      Theme.of(context).primaryColor,
                                )),
                            onPressed: widget?.buttonCancelOnPressed ??
                                () {
                                  Navigator.pop(context);
                                },
                          ),
                  ),
                  Spacer(
                    flex: 1,
                  ),

                  ///[ButtonCOk] refers to 'positive' action button
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
                            onPressed: widget?.buttonOkOnPressed ??
                                () {
                                  Navigator.pop(context);
                                },
                          )
                        : FlatButton.icon(
                            icon: Icon(Icons.done),
                            label: Text(
                              '${widget.buttonOkText}',
                            ),
                            textColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 0.0),
                            color: widget?.buttonOkColor ??
                                Theme.of(context).primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  widget?.buttonRadius ?? 0.0),
                            ),
                            onPressed: widget?.buttonOkOnPressed ??
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
