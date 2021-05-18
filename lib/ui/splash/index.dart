// import 'package:video_app/routes.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:nibbana_test/ui/home/index.dart';
import 'package:nibbana_test/ui/language-select/index.dart';
import 'package:nibbana_test/ui/settings/index.dart';
import 'package:nibbana_test/ui/video/index.dart';
import 'package:nibbana_test/ui/about-us/index.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:nibbana_test/ui/audio/index.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:nibbana_test/ui/about-app/index.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:nibbana_test/ui/pdf-screen/index.dart';

class RoutesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RoutesScreenState();
}

class _RoutesScreenState extends State<RoutesScreen> {
  @override
  void initState() {
    super.initState();
    // startTimer();
  }
  // final Widget leading;

  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  _launchURL(String link) async {
    // const url = link;
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Could not launch $link';
    }
  }

  // @override
  // Widget build(BuildContext context) {

  //   return Material(
  //     child: Center(child: AppIconWidget(image: Assets.appLogo)),
  //   );
  // }

  // startTimer() {
  //   var _duration = Duration(milliseconds: 2000);
  //   return Timer(_duration, navigate);
  // }

  statu() {
    // const PrimaryColors = const Color(0xFFFFFFFF);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  navigate() async {
    // Navigator.of(context).pushReplacementNamed(Routes.login);
  }
  int _selectedIndex = 0;
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    VideoScreen(),
    AudioScreen(),
    ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // const PrimaryColor = const Color(0xFFFFFFFF);

    var hoome = context.locale == Locale('en', 'US') ? "Home" : "මුල් පිටුව";
    var videos = context.locale == Locale('en', 'US') ? 'Videos' : 'තිර පට';
    var audio = context.locale == Locale('en', 'US') ? 'Audio' : 'හඩ පට';
    var contactUs =
        context.locale == Locale('en', 'US') ? 'Contact Us' : 'අප අමතන්න';
    final _flutterWebViewPlugin = FlutterWebviewPlugin();

    return MaterialApp(
      home: Scaffold(
        drawerEdgeDragWidth: 0, // THIS WAY IT WILL NOT OPEN
        key: _scaffoldKey,
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          // elevation: 100,

          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,

            children: <Widget>[
              SizedBox(
                height: 140.0,
                child: DrawerHeader(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: Image.asset(
                            'assets/images/logo.png',
                            fit: BoxFit.contain,
                            height: 50,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                        Text(
                          'Nibbāna',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              color: Colors.white,
                              fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                  ),
                ),
              ),
              ListTile(
                title: context.locale == Locale('en', 'US')
                    ? Text(
                        'The Maha Arahant',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            fontSize: 18.0),
                      )
                    : Text('මහ රහතන්වහන්සේ',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            fontSize: 18.0)),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutScreen()),
                  );
                },
              ),
              ListTile(
                title: context.locale == Locale('en', 'US')
                    ? Text(
                        'Publications',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            fontSize: 18.0),
                      )
                    : Text('ප්‍රකාශන',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            fontSize: 18.0)),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PdfSCreen()));
                },
              ),
              ListTile(
                title: context.locale == Locale('en', 'US')
                    ? Text(
                        'Language',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            fontSize: 18.0),
                      )
                    : Text('භාෂාව',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            fontSize: 18.0)),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LanguageSCreen()));
                },
              ),
              ListTile(
                title: context.locale == Locale('en', 'US')
                    ? Text(
                        'About the App',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            fontSize: 18.0),
                      )
                    : Text('යෙදුම ගැන',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            fontSize: 18.0)),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutApp()),
                  );
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.contain,
                width: 35,
                height: 32,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 40, 0),
              child: Text(
                'Nibbāna',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
          backgroundColor: Colors.grey[900],
          brightness: Brightness.dark,
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                icon: const Icon(Icons.menu),
                color: Colors.white,
                onPressed: () {
                  _flutterWebViewPlugin.hide();
                  Scaffold.of(context).openDrawer();
                });
          }),
          elevation: 10,
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: new BottomNavigationBar(
          backgroundColor: Colors.grey[900],
          // currentIndex: index,
          // onTap: (int index) {
          //   setState(() {
          //     this.index = index;
          //   });
          //   _navigateToScreens(index);
          // },
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
              icon: Icon(Icons.home_sharp),
              label: hoome,
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.video_call_sharp),
              label: videos,
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.audiotrack_sharp),
              label: audio,

              // onTap:
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.contact_page),
              label: contactUs,
            ),
          ],
          currentIndex: _selectedIndex,
          // selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white70,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          // elevation: 100,
        ),
      ),
    );
  }
}
