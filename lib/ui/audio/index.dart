import 'dart:io';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class AudioScreen extends StatefulWidget {
  @override
  _AudioScreenState createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
  }

  @override
  Widget build(BuildContext context) {
    return new WebviewScaffold(
      // enableAppScheme: ,
      url: context.locale == Locale('en', 'US')
          ? "https://www.mahanuwara-wajirabuddhi-thero.org/en/Arahath-Mahanuwara-Wajirabuddhi-Thero-Dhamma-Sermons.html"
          : "https://www.mahanuwara-wajirabuddhi-thero.org/si/Arahath-Mahanuwara-Wajirabuddhi-Thero-Dhamma-Sermons.html",
    );
  }
}
