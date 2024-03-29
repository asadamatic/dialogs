# Dialogs - dialogs

This flutter package provides aesthetically designed dialog box with customization options.

## Now comes with [`legacy_progress_dialog`](https://pub.dev/packages/legacy_progress_dialog)

### Choice Dialog
<p>
  <img width="216px" alt="Choice Dialog" src="https://raw.githubusercontent.com/asadamatic/dialogs/master/assets/choice_dialog.gif"/>
  <img width="216px" alt="Choice Dialog Rectangular" src="https://raw.githubusercontent.com/asadamatic/dialogs/master/assets/choice_dialog_rectangular.jpg"/>
  <img width="216px" alt="Choice Dialog Rectangular Buttons" src="https://raw.githubusercontent.com/asadamatic/dialogs/master/assets/choice_dialog_rectangular_buttons.jpg"/>
</p>


### Message Dialog
<p>
  <img width="216px" alt="Message Dialog Gif" src="https://raw.githubusercontent.com/asadamatic/dialogs/master/assets/message_dialog.gif"/>
  <img width="216px" alt="Message Dialog" src="https://raw.githubusercontent.com/asadamatic/dialogs/master/assets/message_dialog.jpg"/>
  <img width="216px" alt="Message Dialog" src="https://raw.githubusercontent.com/asadamatic/dialogs/master/assets/message_dialog_rectangular_buttons.jpg"/>
</p>

[![Pub Version](https://img.shields.io/pub/v/dialogs?logo=flutter&style=for-the-badge)](https://pub.dev/packages/dialogs)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/asadamatic/dialogs/pub_publish?logo=github&style=for-the-badge)
[![Github Stars](https://img.shields.io/github/stars/asadamatic/dialogs?logo=github&style=for-the-badge)](https://github.com/asadamatic/dialogs)
[![GitHub](https://img.shields.io/github/license/asadamatic/dialogs?logo=open+source+initiative&style=for-the-badge)](https://github.com/asadamatic/dialogs/blob/master/LICENSE)
<!-- [![Awesome Flutter](https://img.shields.io/badge/Awesome-Flutter-FC60A8?logo=awesome-lists&style=for-the-badge)](https://github.com/Solido/awesome-flutter#widgets) -->

## Simple Usage
To use this plugin, add `dialogs` as a
[dependency in your pubspec.yaml file](https://pub.dev/packages/dialogs/install).


### Implementation:


* `import 'package:dialogs/dialogs.dart';`


### ChoiceDialog

* use `ChoiceDialog().show()` function to display the dialog.
```

ChoiceDialog().show(context);

```
##OR
```

final choiceDialog = ChoiceDialog();
choiceDialog.show(context);

```

### MessageDialog

* use `MessageDialog().show()` function and call the **Choice Dialog** .
```

MessageDialog().show(context);

```
## OR
```

final messageDialog = MessageDialog();
choiceDialog.show(context);

```



<Img src="https://raw.githubusercontent.com/asadamatic/dialogs/master/assets/progress_dialog.png" align = "top" height = "350" height="300em" />

### Show progress dialog :
```
//Create an instance of ProgressDialog
ProgressDialog progressDialog = ProgressDialog(
                  context: context,
                  backgroundColor: Colors.blue,
                  textColor: Colors.White,
                );
// show dialog
progressDialog.show();

//close dialog
progressDialog.dismiss();
```


## <div align="center">You are good to go 💯</div>




\
\
In order to add the `ChoiceDialog`, `MessageDialog` to your app, there are several attributes that are important parameters that you might need frequently:

| Attribute | Type  | Default | Required | Description |
|-----------|-------|---------|-------------|----------|
| `buttonOkOnPressed` | `Function()` | `Navigator.pop(context)` | `No` | This function will be registered as the callback of 'Ok' button. |
| `buttonCancelOnPressed` | `Function()` | `Navigator.pop(context)`  | `No` | This function will be registered as the callback of 'Cancel' button. |
| `dialogRadius` | `double` | `15.0` | `No` | Determines the borderRadius of dialog box. |
| `buttonRadius` | `double` | `18.0` | `No` | Determines the borderRadius of action buttons. |
| `iconButtonOk` | `Icon` | `null` | `No` | Renders a FlatButton with the provided icon for positive action. |
| `iconButtonCancel` | `Icon` | `null` | `No` | Renders a FlatButton with the provided icon for negative action. |

\
`show()` also provides some useful parameters of `showDialog()` function


| Attribute | Type  | Default | Required | Description |
|-----------|-------|---------|-------------|----------|
| `context` | `BuildContext` | `Null` | `Yes` | The context argument is used to look up the Navigator and Theme for the dialog. |
| `barrierDismissible` | `bool` | `true` | `No` | Indicates whether tapping on the barrier will dismiss the dialog. |
| `barrierColor` | `Color` | `Colors.black54`  | `No` | Specifies the color of the modal barrier that darkens everything below the dialog. |

## CREDITS
### Contributors
<a href="https://github.com/asadamatic/dialogs/graphs/contributors">
  <img src="https://contributors-img.firebaseapp.com/image?repo=asadamatic/dialogs" />
</a>

Made with [contributors-img](https://contributors-img.firebaseapp.com).
