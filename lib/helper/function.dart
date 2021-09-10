import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/normalColors.dart';

void hideStatusBar() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
      // systemNavigationBarColor: white,
      // systemNavigationBarDividerColor: transparent,
      // systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: []);
}

void simpleGoTo(
  context, {
  required Widget screenName,
  String? dataId,
  Object? data,
}) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (ctx) => screenName,
      settings: RouteSettings(
        name: dataId,
        arguments: data,
      ),
    ),
  );
}

void simpleGoEndTo(
  context, {
  required Widget screenName,
  String? dataId,
  Object? data,
}) {
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(
      builder: (ctx) => screenName,
      settings: RouteSettings(
        name: dataId,
        arguments: data,
      ),
    ),
  );
}
