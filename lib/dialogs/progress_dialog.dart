library dialogs;

import 'package:flutter/material.dart';

//ignore: must_be_immutable
class ProgressDialog extends StatelessWidget {
  final BuildContext context;
  final String loadingText;
  final Color? backgroundColor,
      textColor,
      progressIndicatorColor,
      backgroundOverlay;
  final LinearGradient? linearGradient;
  final String? assetImageName, networkImageUrl;

  ProgressDialog? progressDialog;

  bool isShowing = false;

  ProgressDialog(
      {required this.context,
        this.loadingText = 'Loading...',
        this.backgroundColor,
        this.backgroundOverlay = Colors.white,
        required Color this.textColor,
        this.linearGradient,
        this.assetImageName,
        this.networkImageUrl,
        this.progressIndicatorColor = Colors.white})
      : assert(backgroundColor != null || linearGradient != null,
  'This widget either needs a background color or background linear gradient\n'),
        assert(backgroundColor == null || linearGradient == null,
        'Cannot provide both a backgroundColor and a linearGradient\n'),
        assert(assetImageName == null || networkImageUrl == null,
        'Cannot provide both a assetImageName and a networkImageUrl\n'),
        assert(loadingText.length <= 55,
        'Loading text should not be more than 50 characters\n'),
        assert(loadingText != null, 'Loading text should no be null\n'),
        assert(textColor != null, 'textColor is required\n');

  void dismiss() {
    if (isShowing) {
      isShowing = false;
      Navigator.pop(context);
    }
  }

  void initializeProgress() {
    progressDialog = ProgressDialog(
      context: context,
      loadingText: loadingText,
      backgroundColor: backgroundColor,
      textColor: textColor!,
      linearGradient: linearGradient,
      backgroundOverlay: backgroundOverlay,
      progressIndicatorColor: progressIndicatorColor,
      assetImageName: assetImageName,
      networkImageUrl: networkImageUrl,
    );
  }

  void show() async {
    if (!isShowing) {
      isShowing = true;
      if (progressDialog == null) initializeProgress();
      await showDialog(
        useSafeArea: true,
        context: context,
        barrierDismissible: false,
        builder: (context) => progressDialog!,
        barrierColor: backgroundOverlay!.withOpacity(.2),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width * .8,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(12.0),
                gradient: linearGradient,
              ),
              child: Row(
                children: [
                  Stack(
                    fit: StackFit.passthrough,
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child:
                          assetImageName != null || networkImageUrl != null
                              ? Image(
                            image: (assetImageName != null
                                ? AssetImage(assetImageName!)
                                : NetworkImage(networkImageUrl!)) as ImageProvider<Object>,
                            fit: BoxFit.contain,
                            height: 22.5,
                            width: 22.5,
                            alignment: Alignment.bottomCenter,
                          )
                              : SizedBox(width: 0.0, height: 0.0),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: CircularProgressIndicator(
                          backgroundColor: progressIndicatorColor,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          loadingText,
                          style: TextStyle(
                              letterSpacing: .9, color: textColor, fontSize: 16.0),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
