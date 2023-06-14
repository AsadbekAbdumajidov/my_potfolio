import 'package:flutter/material.dart';

class AppKeys {
  const AppKeys._();

  static final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
}
