# Dialogs - dialogs

This flutter package provides aesthetically designed dialog box with customization options.

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
  <img width="216px" alt="Message Dialog" src="https://raw.githubusercontent.com/asadamatic/dialogs/master/assets/choice_dialog_rectangular_buttons.jpg"/>
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

* Import `import 'package:dialogs/ChoiceDialog/dialogs.dart';`


### ChoiceDialog

* use `showDialog` function and call the **Choice Dialog** .
```
showDialog(
           context: context,
           builder: (buildContext) => ChoiceDialog()
);
```

### MessageDialog

* use `showDialog` function and call the **Choice Dialog** .
```
showDialog(
           context: context,
           builder: (buildContext) => MessageDialog()
);
```

## <div align="center">You are good to go 💯</div>


In order to add the `ChoiceDialog` to your app, there are several attributes that are important parameters you might have to use frequently:

| Attribute | Type  | Default | Required | Description |
|-----------|-------|---------|-------------|----------|
| `buttonOkOnPressed` | `Function()` | `Navigator.pop(context)` | `No` | This function will be registered as the callback of 'Ok' button. |
| `buttonCancelOnPressed` | `Function()` | `Navigator.pop(context)`  | `No` | This function will be registered as the callback of 'Cancel' button. |
| `dialogRadius` | `double` | `15.0` | `No` | Determines the borderRadius of dialog box. |
| `buttonRadius` | `double` | `18.0` | `No` | Determines the borderRadius of action buttons. |
| `iconButtonOk` | `Icon` | `null` | `No` | Renders a FlatButton with the provided icon for positive action. |
| `iconButtonCancel` | `Icon` | `null` | `No` | Renders a FlatButton with the provided icon for negative action. |

## CREDITS
### Contributors
<a href="https://github.com/asadamatic/dialogs/graphs/contributors">
  <img src="https://contributors-img.firebaseapp.com/image?repo=asadamatic/dialogs" />
</a>

Made with [contributors-img](https://contributors-img.firebaseapp.com).
