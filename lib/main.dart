// import 'package:flutter/material.dart';
// // import 'package:video_app/routes.dart';
// import 'package:nibbana_test/ui/splash/index.dart';
import 'package:nibbana_test/ui/language-select/index.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;
import 'package:nibbana_test/ui/splash/index.dart';
import 'package:easy_localization/easy_localization.dart';
// // import 'package:flutter_localizations/flutter_localizations.dart';

// void main() {
//   runApp(
//     EasyLocalization(
//         supportedLocales: [Locale('en', 'US'), Locale('sk', 'SK')],
//         path: 'assets/translations/', // <-- change patch to your
//         fallbackLocale: Locale('en', 'US'),
//         saveLocale: true,
//         child: MyApp()),
//   );
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       localizationsDelegates: context.localizationDelegates,
//       supportedLocales: context.supportedLocales,
//       locale: context.locale,
//       home: LanguageSCreen(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

// import 'SecondScreen.dart';

// void main() {
//   runApp(MyApp());
// }
void main() {
  runApp(
    EasyLocalization(
        useOnlyLangCode: false,
        supportedLocales: [Locale('en', 'US'), Locale('sk', 'SK')],
        path: 'assets/translations', // <-- change patch to your
        fallbackLocale: Locale('en', 'US'),
        saveLocale: true,
        child: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool canRoute = false;
  @override
  void initState() {
    super.initState();
    getLanguage();
  }

  getLanguage() async {
    String lan = '';

    SharedPreferences prefs = await SharedPreferences.getInstance();

    var d = await prefs.getString('language');
    print(d);
    if (d == '') {
      setState(() => {canRoute = false});
    } else if (d == null) {
      setState(() => {canRoute = false});
    } else {
      setState(() => {canRoute = true});
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => new RoutesScreen()),
      );
    }
    print(d);
  }

  bool _isLoading = false;
  // void initState() {
  //   super.initState();
  //   Future.delayed(Duration(seconds: 100), () {
  //     setState(() {
  //       // Here you can write your code for open new view
  //       _isLoading = true;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    /// Normal Logo Splash screen
    // Widget example1 = SplashScreenView(
    //   home: LanguageSCreen(),
    //   duration: 3000,
    //   imageSize: 200,
    //   imageSrc: "assets/images/logo.png",
    //   backgroundColor: Colors.white,
    // );

    // /// Logo with animated Colorize text
    // Widget example2 = SplashScreenView(
    //   home: LanguageSCreen(),
    //   duration: 5000,
    //   imageSize: 100,
    //   imageSrc: "assets/images/logo.png",
    //   text: "Colorize Text",
    //   textType: TextType.ColorizeAnimationText,
    //   textStyle: TextStyle(
    //     fontSize: 40.0,
    //   ),
    //   colors: [
    //     Colors.purple,
    //     Colors.blue,
    //     Colors.yellow,
    //     Colors.red,
    //   ],
    //   backgroundColor: Colors.white,
    // );

    // /// Logo with Typer Animated Text example
    // Widget example3 = SplashScreenView(
    //   home: LanguageSCreen(),
    //   duration: 3000,
    //   imageSize: 100,
    //   imageSrc: "assets/images/logo.png",
    //   text: "Typer Animated Text",
    //   textType: TextType.TyperAnimatedText,
    //   textStyle: TextStyle(
    //     fontSize: 30.0,
    //   ),
    //   backgroundColor: Colors.white,
    // );

    // /// Logo with Scale Animated Text example
    // Widget example4 = SplashScreenView(
    //   home: LanguageSCreen(),
    //   duration: 3000,
    //   imageSize: 100,
    //   imageSrc: "assets/images/logo.png",
    //   text: "Scale Animated Text",
    //   textType: TextType.ScaleAnimatedText,
    //   textStyle: TextStyle(
    //     fontSize: 30.0,
    //   ),
    //   backgroundColor: Colors.white,
    // );

    /// Logo with Normal Text example
    Widget example5 = SplashScreenView(
      home: canRoute ? RoutesScreen() : LanguageSCreen(),
      duration: 5000,
      imageSize: 420,
      imageSrc: "assets/images/spalshnew2.jpeg",
      textType: TextType.TyperAnimatedText,
      backgroundColor: Color.fromRGBO(10, 10, 10, 1),
    );

    return MaterialApp(
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      localeResolutionCallback:
          (Locale locale, Iterable<Locale> supportedLocales) {
        //print("change language");
        return locale;
      },
      supportedLocales: context.supportedLocales,
      home: example5,
    );
  }
}
