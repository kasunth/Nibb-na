import 'package:flutter/material.dart';
import 'ui/home/index.dart';
// import 'ui/login/index.dart';
import 'ui/splash/index.dart';
import 'ui/language-select/index.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String languageSelect = '/languageSelect';
  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => RoutesScreen(),
    languageSelect: (BuildContext context) => LanguageSCreen(),
    home: (BuildContext context) => HomeScreen(),
  };
}
