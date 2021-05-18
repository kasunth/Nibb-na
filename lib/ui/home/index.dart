import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_conditional_rendering/flutter_conditional_rendering.dart';

// import 'package:easy_localization_loader/easy_localization_loader.dart';
// import 'generated/locale_keys.g.dart';
// import './../../app_localizations.dart';
// import 'package:easy_localization/easy_localization.dart';
class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> _launched;
  // Future<void> _launchUniversalLinkIos(String url) async {
  //   if (await canLaunch(url)) {
  //     final bool nativeAppLaunchSucceeded = await launch(
  //       url,
  //       forceSafariVC: false,
  //       universalLinksOnly: true,
  //     );
  //     if (!nativeAppLaunchSucceeded) {
  //       await launch(
  //         url,
  //         forceSafariVC: true,
  //       );
  //     }
  //   }
  // }

  _launchURL(String link) async {
    // const url = link;
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Could not launch $link';
    }
  }

  Future<void> _launchInWebViewOrVC(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewWithJavaScript(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchSocial(String url, String fallbackUrl) async {
    // Don't use canLaunch because of fbProtocolUrl (fb://)
    try {
      bool launched =
          await launch(url, forceSafariVC: false, forceWebView: false);
      print(launched);
      if (!launched) {
        // await launch(fallbackUrl, forceSafariVC: false, forceWebView: false);
        await launch(
          url,
          forceSafariVC: true,
          universalLinksOnly: true,
        );
      }
    } catch (e) {
      await launch(url);
    }
  }

  Future<void> _launchUniversalLinkIos(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
          forceSafariVC: true,
        );
      }
    }
  }

  show() {
    if (context.locale == Locale('en', 'US')) {
      return <Widget>[
        Card(
          elevation: 5,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: RaisedButton(
            padding: const EdgeInsets.all(0.0),
            // splashColor: Colors.blue.withAlpha(30),
            onPressed: () => setState(() {
              _launchURL('https://www.mahanuwara-wajirabuddhi-thero.org/en');
            }),
            child: Container(
              width: double.maxFinite,
              height: 250,
              child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: new Image(
                            image:
                                AssetImage('assets/images/the_arahath3a.jpg'),
                            fit: BoxFit.cover,
                            width: double.maxFinite,
                            alignment: Alignment.topCenter),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            Text(
                              "Official Website",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text("www.mahanuwara-wajirabuddhi-thero.org"),
                            // Text("data")
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
        Card(
          elevation: 5,
          semanticContainer: true,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: RaisedButton(
            // splashColor: Colors.blue.withAlpha(30),
            padding: const EdgeInsets.all(0.0),
            onPressed: () => setState(() {
              _launchURL(
                  'https://www.facebook.com/ArahantMahanuwaraWajirabuddhiThero');
            }),
            child: Container(
              width: double.maxFinite,
              height: 250,
              child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: new Image(
                            image: AssetImage(
                                'assets/images/facebook_image_3.jpg'),
                            fit: BoxFit.cover,
                            width: double.maxFinite,
                            alignment: Alignment.topCenter),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            Text(
                              "Link to Facebook Page",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text("The Buddha's Teaching on Nibbāna "),
                            // Text("data")
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
        Card(
          elevation: 5,
          semanticContainer: true,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: RaisedButton(
            // splashColor: Colors.blue.withAlpha(30),
            padding: const EdgeInsets.all(0.0),
            onPressed: () => setState(() {
              _launchSocial(
                  'https://www.facebook.com/groups/ThePathToNibbanaGreatBuddhistMasters',
                  'https://www.facebook.com/groups/ThePathToNibbanaGreatBuddhistMasters');
              // _launchURL(
              //     'https://www.facebook.com/groups/ThePathToNibbanaGreatBuddhistMasters');
            }),
            child: Container(
              width: double.maxFinite,
              height: 250,
              child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: new Image(
                            image: AssetImage(
                                'assets/images/facebook_image_2.jpg'),
                            fit: BoxFit.cover,
                            width: double.maxFinite,
                            alignment: Alignment.topCenter),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            Text(
                              "Link to Facebook Group",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text(
                                "නිවන් මගට පිළිපන් ශ්‍රේෂ්ඨ යතිවරු | Great Buddhist Masters"),
                            // Text("data")
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
        Card(
          elevation: 5,
          semanticContainer: true,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: RaisedButton(
            // splashColor: Colors.blue.withAlpha(30),
            padding: const EdgeInsets.all(0.0),
            onPressed: () => setState(() {
              _launchSocial('https://www.facebook.com/groups/186637356043948',
                  'https://www.facebook.com/groups/186637356043948');
            }),
            child: Container(
              width: double.maxFinite,
              height: 250,
              child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: new Image(
                            image: AssetImage(
                                'assets/images/facebook_image_3.jpg'),
                            fit: BoxFit.cover,
                            width: double.maxFinite,
                            alignment: Alignment.topCenter),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            Text(
                              "Link to Facebook Group Page",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text(
                                "The Seekers' Forum of The Buddha's Teaching on Nibbāna"),
                            // Text("data")
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: RaisedButton(
            padding: const EdgeInsets.all(0.0),
            // splashColor: Colors.blue.withAlpha(30),
            onPressed: () => setState(() {
              _launchSocial('https://www.instagram.com/info.thepathtonibbana/',
                  'https://www.instagram.com/info.thepathtonibbana/');
            }),
            child: Container(
              width: double.maxFinite,
              height: 250,
              child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: new Image(
                            image: AssetImage(
                                'assets/images/facebook_image_1.jpg'),
                            fit: BoxFit.cover,
                            width: double.maxFinite,
                            alignment: Alignment.topCenter),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            Text(
                              "Link to  Instagram",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text("info.thepathtonibbana"),
                            // Text("data")
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        )
      ];
    } else {
      return <Widget>[
        Card(
          elevation: 5,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: RaisedButton(
            padding: const EdgeInsets.all(0.0),
            // splashColor: Colors.blue.withAlpha(30),
            onPressed: () => setState(() {
              _launchURL('https://www.mahanuwara-wajirabuddhi-thero.org/si');
            }),
            child: Container(
              width: double.maxFinite,
              height: 250,
              child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: new Image(
                            image:
                                AssetImage('assets/images/the_arahath3a.jpg'),
                            fit: BoxFit.cover,
                            width: double.maxFinite,
                            alignment: Alignment.topCenter),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            Text(
                              "නිල වෙබ් අඩවිය",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text("www.mahanuwara-wajirabuddhi-thero.org",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            // Text("data")
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: RaisedButton(
            padding: const EdgeInsets.all(0.0),
            // splashColor: Colors.blue.withAlpha(30),
            onPressed: () => setState(() {
              _launchURL('https://www.facebook.com/ThePathToNibbana/');
            }),
            child: Container(
              width: double.maxFinite,
              height: 250,
              child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: new Image(
                            image: AssetImage(
                                'assets/images/facebook_image_1.jpg'),
                            fit: BoxFit.cover,
                            width: double.maxFinite,
                            alignment: Alignment.topCenter),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            Text(
                              "නිල ෆේස්බුක් පිටුව",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text("නිවන් මග",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            // Text("data")
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: RaisedButton(
            padding: const EdgeInsets.all(0.0),
            // splashColor: Colors.blue.withAlpha(30),
            onPressed: () => setState(() {
              _launchURL(
                  'https://www.facebook.com/WajirabuddhiTheroSammaDitthi/');
            }),
            child: Container(
              width: double.maxFinite,
              height: 250,
              child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: new Image(
                            image: AssetImage(
                                'assets/images/facebook_image_4.jpg'),
                            fit: BoxFit.cover,
                            width: double.maxFinite,
                            alignment: Alignment.topCenter),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            Text(
                              "ෆේස්බුක් පිටුව",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text("සම්මා දිට්ඨි - Sammā Ditthi ",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold))
                            // Text("data")
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
        Card(
          elevation: 5,
          semanticContainer: true,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: RaisedButton(
            padding: const EdgeInsets.all(0.0),
            // splashColor: Colors.blue.withAlpha(30),
            onPressed: () => setState(() {
              _launchSocial(
                  'https://www.facebook.com/groups/ThePathToNibbanaGreatBuddhistMasters',
                  'https://www.facebook.com/groups/ThePathToNibbanaGreatBuddhistMasters');
            }),
            child: Container(
              width: double.maxFinite,
              height: 250,
              child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: new Image(
                            image: AssetImage(
                                'assets/images/facebook_image_2.jpg'),
                            fit: BoxFit.cover,
                            width: double.maxFinite,
                            alignment: Alignment.topCenter),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            Text(
                              "ෆේස්බුක් කණ්ඩායම",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                                "නිවන් මගට පිළිපන් ශ්‍රේෂ්ඨ යතිවරු | Great Buddhist Masters",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            // Text("data")
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: RaisedButton(
            padding: const EdgeInsets.all(0.0),
            // splashColor: Colors.blue.withAlpha(30),
            onPressed: () => setState(() {
              _launchSocial('https://www.instagram.com/info.thepathtonibbana/',
                  'https://www.instagram.com/info.thepathtonibbana/');
            }),
            child: Container(
              width: double.maxFinite,
              height: 250,
              child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: new Image(
                            image: AssetImage(
                                'assets/images/facebook_image_1.jpg'),
                            fit: BoxFit.cover,
                            width: double.maxFinite,
                            alignment: Alignment.topCenter),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            Text(
                              "ඉන්ස්ටග්‍රෑම්",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text("info.thepathtonibbana",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            // Text("data")
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.grey[200],
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              margin: EdgeInsets.all(20),
              child: Column(children: show()),
            )
          ]))
        ],
      ),
    ));
  }
}

// context.locale == Locale('en', 'US')
//                     ? [
//                         Card(
//                           elevation: 5,
//                           margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
//                           semanticContainer: true,
//                           clipBehavior: Clip.antiAliasWithSaveLayer,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: RaisedButton(
//                             padding: const EdgeInsets.all(0.0),
//                             // splashColor: Colors.blue.withAlpha(30),
//                             onPressed: () => setState(() {
//                               _launchURL(
//                                   'https://www.mahanuwara-wajirabuddhi-thero.org/en');
//                             }),
//                             child: Container(
//                               width: double.maxFinite,
//                               height: 250,
//                               child: Padding(
//                                   padding: EdgeInsets.all(0.0),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Expanded(
//                                         child: new Image(
//                                             image: AssetImage(
//                                                 'assets/images/the_arahath3a.jpg'),
//                                             fit: BoxFit.cover,
//                                             width: double.maxFinite,
//                                             alignment: Alignment.topCenter),
//                                       ),
//                                       Padding(
//                                         padding:
//                                             EdgeInsets.fromLTRB(15, 10, 15, 15),
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           // mainAxisAlignment: MainAxisAlignment.start,
//                                           mainAxisSize: MainAxisSize.min,

//                                           children: [
//                                             Text(
//                                               "Official Website",
//                                               style: TextStyle(
//                                                   fontSize: 22,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                             Text(
//                                                 "www.mahanuwara-wajirabuddhi-thero.org"),
//                                             // Text("data")
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                   )),
//                             ),
//                           ),
//                         ),
//                         Card(
//                           elevation: 5,
//                           semanticContainer: true,
//                           margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
//                           clipBehavior: Clip.antiAliasWithSaveLayer,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: RaisedButton(
//                             // splashColor: Colors.blue.withAlpha(30),
//                             padding: const EdgeInsets.all(0.0),
//                             onPressed: () => setState(() {
//                               _launchURL(
//                                   'https://www.facebook.com/ArahantMahanuwaraWajirabuddhiThero');
//                             }),
//                             child: Container(
//                               width: double.maxFinite,
//                               height: 250,
//                               child: Padding(
//                                   padding: EdgeInsets.all(0.0),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Expanded(
//                                         child: new Image(
//                                             image: AssetImage(
//                                                 'assets/images/facebook_image_3.jpg'),
//                                             fit: BoxFit.cover,
//                                             width: double.maxFinite,
//                                             alignment: Alignment.topCenter),
//                                       ),
//                                       Padding(
//                                         padding:
//                                             EdgeInsets.fromLTRB(15, 10, 15, 15),
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           // mainAxisAlignment: MainAxisAlignment.start,
//                                           mainAxisSize: MainAxisSize.min,

//                                           children: [
//                                             Text(
//                                               "Link to Facebook",
//                                               style: TextStyle(
//                                                   fontSize: 22,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                             Text(
//                                                 "The Buddha's Teaching on Nibbāna "),
//                                             // Text("data")
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                   )),
//                             ),
//                           ),
//                         ),
//                         Card(
//                           elevation: 5,
//                           semanticContainer: true,
//                           margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
//                           clipBehavior: Clip.antiAliasWithSaveLayer,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: RaisedButton(
//                             // splashColor: Colors.blue.withAlpha(30),
//                             padding: const EdgeInsets.all(0.0),
//                             onPressed: () => setState(() {
//                               _launchURL(
//                                   'https://www.facebook.com/groups/ThePathToNibbanaGreatBuddhistMasters');
//                             }),
//                             child: Container(
//                               width: double.maxFinite,
//                               height: 250,
//                               child: Padding(
//                                   padding: EdgeInsets.all(0.0),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Expanded(
//                                         child: new Image(
//                                             image: AssetImage(
//                                                 'assets/images/facebook_image_2.jpg'),
//                                             fit: BoxFit.cover,
//                                             width: double.maxFinite,
//                                             alignment: Alignment.topCenter),
//                                       ),
//                                       Padding(
//                                         padding:
//                                             EdgeInsets.fromLTRB(15, 10, 15, 15),
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           // mainAxisAlignment: MainAxisAlignment.start,
//                                           mainAxisSize: MainAxisSize.min,

//                                           children: [
//                                             Text(
//                                               "Link to Facebook Group",
//                                               style: TextStyle(
//                                                   fontSize: 22,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                             Text(
//                                                 "නිවන් මගට පිළිපන් ශ්‍රේෂ්ඨ යතිවරු | Great Buddhist Masters"),
//                                             // Text("data")
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                   )),
//                             ),
//                           ),
//                         ),
//                         Card(
//                           elevation: 5,
//                           semanticContainer: true,
//                           margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
//                           clipBehavior: Clip.antiAliasWithSaveLayer,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: RaisedButton(
//                             // splashColor: Colors.blue.withAlpha(30),
//                             padding: const EdgeInsets.all(0.0),
//                             onPressed: () => setState(() {
//                               _launchURL(
//                                   'https://www.facebook.com/groups/186637356043948');
//                             }),
//                             child: Container(
//                               width: double.maxFinite,
//                               height: 250,
//                               child: Padding(
//                                   padding: EdgeInsets.all(0.0),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Expanded(
//                                         child: new Image(
//                                             image: AssetImage(
//                                                 'assets/images/facebook_image_3.jpg'),
//                                             fit: BoxFit.cover,
//                                             width: double.maxFinite,
//                                             alignment: Alignment.topCenter),
//                                       ),
//                                       Padding(
//                                         padding:
//                                             EdgeInsets.fromLTRB(15, 10, 15, 15),
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           // mainAxisAlignment: MainAxisAlignment.start,
//                                           mainAxisSize: MainAxisSize.min,

//                                           children: [
//                                             Text(
//                                               "Link to Facebook Group",
//                                               style: TextStyle(
//                                                   fontSize: 22,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                             Text(
//                                                 "The Seekers' Forum of The Buddha's Teaching on Nibbāna"),
//                                             // Text("data")
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                   )),
//                             ),
//                           ),
//                         ),
//                         Card(
//                           elevation: 5,
//                           margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
//                           semanticContainer: true,
//                           clipBehavior: Clip.antiAliasWithSaveLayer,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: RaisedButton(
//                             padding: const EdgeInsets.all(0.0),
//                             // splashColor: Colors.blue.withAlpha(30),
//                             onPressed: () => setState(() {
//                               _launchURL(
//                                   'https://www.instagram.com/info.thepathtonibbana/');
//                             }),
//                             child: Container(
//                               width: double.maxFinite,
//                               height: 250,
//                               child: Padding(
//                                   padding: EdgeInsets.all(0.0),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Expanded(
//                                         child: new Image(
//                                             image: AssetImage(
//                                                 'assets/images/facebook_image_1.jpg'),
//                                             fit: BoxFit.cover,
//                                             width: double.maxFinite,
//                                             alignment: Alignment.topCenter),
//                                       ),
//                                       Padding(
//                                         padding:
//                                             EdgeInsets.fromLTRB(15, 10, 15, 15),
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           // mainAxisAlignment: MainAxisAlignment.start,
//                                           mainAxisSize: MainAxisSize.min,

//                                           children: [
//                                             Text(
//                                               "Link to  Instagram",
//                                               style: TextStyle(
//                                                   fontSize: 22,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                             Text("info.thepathtonibbana"),
//                                             // Text("data")
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                   )),
//                             ),
//                           ),
//                         )
//                       ]
//                     : [
//                         Card(
//                           elevation: 5,
//                           margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
//                           semanticContainer: true,
//                           clipBehavior: Clip.antiAliasWithSaveLayer,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: RaisedButton(
//                             padding: const EdgeInsets.all(0.0),
//                             // splashColor: Colors.blue.withAlpha(30),
//                             onPressed: () => setState(() {
//                               _launchURL(
//                                   'https://www.mahanuwara-wajirabuddhi-thero.org/si');
//                             }),
//                             child: Container(
//                               width: double.maxFinite,
//                               height: 250,
//                               child: Padding(
//                                   padding: EdgeInsets.all(0.0),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Expanded(
//                                         child: new Image(
//                                             image: AssetImage(
//                                                 'assets/images/the_arahath3a.jpg'),
//                                             fit: BoxFit.cover,
//                                             width: double.maxFinite,
//                                             alignment: Alignment.topCenter),
//                                       ),
//                                       Padding(
//                                         padding:
//                                             EdgeInsets.fromLTRB(15, 10, 15, 15),
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           // mainAxisAlignment: MainAxisAlignment.start,
//                                           mainAxisSize: MainAxisSize.min,

//                                           children: [
//                                             Text(
//                                               "නිල වෙබ් අඩවිය",
//                                               style: TextStyle(
//                                                   fontSize: 22,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                             Text(
//                                                 "www.mahanuwara-wajirabuddhi-thero.org"),
//                                             // Text("data")
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                   )),
//                             ),
//                           ),
//                         ),
//                         Card(
//                           elevation: 5,
//                           margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
//                           semanticContainer: true,
//                           clipBehavior: Clip.antiAliasWithSaveLayer,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: RaisedButton(
//                             padding: const EdgeInsets.all(0.0),
//                             // splashColor: Colors.blue.withAlpha(30),
//                             onPressed: () => setState(() {
//                               _launchURL(
//                                   'https://www.facebook.com/ThePathToNibbana/');
//                             }),
//                             child: Container(
//                               width: double.maxFinite,
//                               height: 250,
//                               child: Padding(
//                                   padding: EdgeInsets.all(0.0),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Expanded(
//                                         child: new Image(
//                                             image: AssetImage(
//                                                 'assets/images/facebook_image_1.jpg'),
//                                             fit: BoxFit.cover,
//                                             width: double.maxFinite,
//                                             alignment: Alignment.topCenter),
//                                       ),
//                                       Padding(
//                                         padding:
//                                             EdgeInsets.fromLTRB(15, 10, 15, 15),
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           // mainAxisAlignment: MainAxisAlignment.start,
//                                           mainAxisSize: MainAxisSize.min,

//                                           children: [
//                                             Text(
//                                               "ෆේස්බුක් පිටුව",
//                                               style: TextStyle(
//                                                   fontSize: 22,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                             Text("THE PATH TO NIBBANA "),
//                                             // Text("data")
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                   )),
//                             ),
//                           ),
//                         ),
//                         Card(
//                           elevation: 5,
//                           margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
//                           semanticContainer: true,
//                           clipBehavior: Clip.antiAliasWithSaveLayer,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: RaisedButton(
//                             padding: const EdgeInsets.all(0.0),
//                             // splashColor: Colors.blue.withAlpha(30),
//                             onPressed: () => setState(() {
//                                 'https://www.facebook.com/WajirabuddhiTheroSammaDitthi/');
//                             }),
//                             child: Container(
//                               width: double.maxFinite,
//                               height: 250,
//                               child: Padding(
//                                   padding: EdgeInsets.all(0.0),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Expanded(
//                                         child: new Image(
//                                             image: AssetImage(
//                                                 'assets/images/facebook_image_4.jpg'),
//                                             fit: BoxFit.cover,
//                                             width: double.maxFinite,
//                                             alignment: Alignment.topCenter),
//                                       ),
//                                       Padding(
//                                         padding:
//                                             EdgeInsets.fromLTRB(15, 10, 15, 15),
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           // mainAxisAlignment: MainAxisAlignment.start,
//                                           mainAxisSize: MainAxisSize.min,

//                                           children: [
//                                             Text(
//                                               "ෆේස්බුක් පිටුව",
//                                               style: TextStyle(
//                                                   fontSize: 20,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                             Text(
//                                                 "සම්මා දිට්ඨි - Sammā Ditthi "),
//                                             Text('first_string').tr(),
//                                             // Text("data")
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                   )),
//                             ),
//                           ),
//                         ),
//                         Card(
//                           elevation: 5,
//                           semanticContainer: true,
//                           margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
//                           clipBehavior: Clip.antiAliasWithSaveLayer,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: RaisedButton(
//                             padding: const EdgeInsets.all(0.0),
//                             // splashColor: Colors.blue.withAlpha(30),
//                             onPressed: () => setState(() {
//                               _launchURL(
//                                   'https://www.facebook.com/groups/ThePathToNibbanaGreatBuddhistMasters');
//                             }),
//                             child: Container(
//                               width: double.maxFinite,
//                               height: 250,
//                               child: Padding(
//                                   padding: EdgeInsets.all(0.0),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Expanded(
//                                         child: new Image(
//                                             image: AssetImage(
//                                                 'assets/images/facebook_image_2.jpg'),
//                                             fit: BoxFit.cover,
//                                             width: double.maxFinite,
//                                             alignment: Alignment.topCenter),
//                                       ),
//                                       Padding(
//                                         padding:
//                                             EdgeInsets.fromLTRB(15, 10, 15, 15),
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           // mainAxisAlignment: MainAxisAlignment.start,
//                                           mainAxisSize: MainAxisSize.min,

//                                           children: [
//                                             Text(
//                                               "ෆේස්බුක් කණ්ඩායම",
//                                               style: TextStyle(
//                                                   fontSize: 22,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                             Text(
//                                                 "නිවන් මගට පිළිපන් ශ්‍රේෂ්ඨ යතිවරු | Great Buddhist Masters"),
//                                             // Text("data")
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                   )),
//                             ),
//                           ),
//                         ),
//                         Card(
//                           elevation: 5,
//                           margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
//                           semanticContainer: true,
//                           clipBehavior: Clip.antiAliasWithSaveLayer,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: RaisedButton(
//                             padding: const EdgeInsets.all(0.0),
//                             // splashColor: Colors.blue.withAlpha(30),
//                             onPressed: () => setState(() {
//                               _launchURL(
//                                   'https://www.instagram.com/info.thepathtonibbana/');
//                             }),
//                             child: Container(
//                               width: double.maxFinite,
//                               height: 250,
//                               child: Padding(
//                                   padding: EdgeInsets.all(0.0),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Expanded(
//                                         child: new Image(
//                                             image: AssetImage(
//                                                 'assets/images/facebook_image_1.jpg'),
//                                             fit: BoxFit.cover,
//                                             width: double.maxFinite,
//                                             alignment: Alignment.topCenter),
//                                       ),
//                                       Padding(
//                                         padding:
//                                             EdgeInsets.fromLTRB(15, 10, 15, 15),
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           // mainAxisAlignment: MainAxisAlignment.start,
//                                           mainAxisSize: MainAxisSize.min,

//                                           children: [
//                                             Text(
//                                               "ඉන්ස්ටග්‍රෑම්",
//                                               style: TextStyle(
//                                                   fontSize: 22,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                             Text("info.thepathtonibbana"),
//                                             // Text("data")
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                   )),
//                             ),
//                           ),
//                         ),
//                       ],
