import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoading = true;
  PDFDocument document;
  String d;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    print('loadDocument');
    // print(context.locale == Locale('en', 'US'));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    d = await prefs.getString('language');
    print('getString');
    print(d);
    if (d == 'en') {
      document = await PDFDocument.fromAsset(
          'assets/images/The_Path_to_Nibbana_as_Declared_by_the_Buddha_English_Version.pdf');
    } else {
      document = await PDFDocument.fromAsset(
          'assets/images/The_Path_to_Nibbana_as_Declared_by_the_Buddha_Sinhala_Version.pdf');
    }

    // if (context.locale == Locale('en', 'US')) {
    //   document = await PDFDocument.fromAsset(
    //       'assets/images/The_Path_to_Nibbana_as_Declared_by_the_Buddha_English_Version.pdf');
    // } else {
    //   document = await PDFDocument.fromAsset(
    //       'assets/images/The_Path_to_Nibbana_as_Declared_by_the_Buddha_English_Version.pdf');
    // }

    setState(() => _isLoading = false);
  }

  changePDF(value) async {
    print(value);
    setState(() => _isLoading = true);
    if (value == 1) {
      print('1');
      document = await PDFDocument.fromAsset(
          'assets/images/The_Path_to_Nibbana_as_Declared_by_the_Buddha_English_Version.pdf');
    } else if (value == 2) {
      print('2');
      document = await PDFDocument.fromURL(
        "assets/images/The_Path_to_Nibbana_as_Declared_by_the_Buddha_English_Version.pdf",
        /* cacheManager: CacheManager(
          Config(
            "customCacheKey",
            stalePeriod: const Duration(days: 2),
            maxNrOfCacheObjects: 10,
          ),
        ), */
      );
    } else {
      print('else');
      document = await PDFDocument.fromAsset('assets/sample.pdf');
    }
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('PDFViewer'),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: _isLoading
              ? Center(child: CircularProgressIndicator())
              : PDFViewer(
                  document: document,
                  zoomSteps: 1,
                  //uncomment below line to preload all pages
                  // lazyLoad: false,
                  // uncomment below line to scroll vertically
                  // scrollDirection: Axis.vertical,

                  //uncomment below code to replace bottom navigation with your own
                  /* navigationBuilder:
                      (context, page, totalPages, jumpToPage, animateToPage) {
                    return ButtonBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.first_page),
                          onPressed: () {
                            jumpToPage()(page: 0);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            animateToPage(page: page - 2);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward),
                          onPressed: () {
                            animateToPage(page: page);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.last_page),
                          onPressed: () {
                            jumpToPage(page: totalPages - 1);
                          },
                        ),
                      ],
                    );
                  }, */
                ),
        ),
      ),
    );
  }
}
