import 'package:flutter/material.dart';
import 'dart:developer' as developer;
import 'package:nibbana_test/ui/splash/index.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

void main() {
  developer.log('log me', name: 'my.app.category');

  developer.log('log me 1', name: 'my.other.category');
  developer.log('log me 2', name: 'my.other.category');
}

class LanguageSCreen extends StatefulWidget {
  LanguageSCreen({Key key}) : super(key: key);
  @override
  _LanguageSCreenState createState() => _LanguageSCreenState();
}

class _LanguageSCreenState extends State<LanguageSCreen> {
  // String dropdownValue = 'Sinhala';
  void _incrementCounter() {
    setState(() {});
  }

  // @override
  // void initState() {
  //   getLanguage();
  // }

  // getLanguage() async {
  //   String lan = '';
  //   SharedPreferences prefs = await SharedPreferences.getInstance();

  //   var d = await prefs.getString('language');
  //   if (d == '') {
  //   } else if (d == null) {
  //   } else {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => new RoutesScreen()),
  //     );
  //   }
  //   print(d);
  // }

  List<String> options = <String>['Sinhala', 'English'];
  String dropdownValue;

  void ddd() async {
    // In value;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', 'sk');
    setState(() {
      EasyLocalization.of(context).locale = Locale('sk', 'SK');
      // context.locale = Locale('sk', 'SK');

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => new RoutesScreen()),
      );
    });
  }

  void eee() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', 'en');
    setState(() {
      // context.locale = Locale('en', 'US');
      EasyLocalization.of(context).locale = Locale('en', 'US');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => new RoutesScreen()),
      );
    });
  }

  void onchangeFun(String value) {
    setState(() {
      dropdownValue = value;
    });
    if (dropdownValue == 'Sinhala') {
      ddd();
    } else {
      eee();
    }
  }

  @override
  Widget build(BuildContext context) {
    // const color = const Colors.grey[900]);

    return new Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
          child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // Text(
            //   'Select App Language:',
            //   style: TextStyle(color: Colors.white),
            // ),
            // DropdownButton<String>(
            //   value: dropdownValue,
            //   style: TextStyle(color: Colors.white, fontSize: 15),
            //   hint: dropdownValue != null
            //       ? null
            //       : Text(
            //           'Select App Language',
            //           style: TextStyle(color: Colors.white),
            //         ),
            //   onChanged: onchangeFun,
            //   selectedItemBuilder: dropdownValue == null
            //       ? null
            //       : (BuildContext context) {
            //           return ['Sinhala', 'English'].map((String value) {
            //             return Text(
            //               dropdownValue,
            //               style: TextStyle(color: Colors.green),
            //             );
            //           }).toList();
            //         },
            //   items: ['Sinhala', 'English']
            //       .map<DropdownMenuItem<String>>((String value) {
            //     return DropdownMenuItem<String>(
            //       value: value,
            //       child: Text(value,
            //           style: TextStyle(inherit: false, color: Colors.black)),
            //     );
            //   }).toList(),
            // ),

            Expanded(
                child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton<String>(
                isDense: true,
                hint: new Text(
                  "Select Language",
                  style: TextStyle(color: Colors.white),
                ),
                value: dropdownValue,
                onChanged: onchangeFun,
                items: ['Sinhala', 'English'].map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    // value: _mySelection,
                    child: Row(
                      children: <Widget>[
                        new Image(
                          image: value == "Sinhala"
                              ? AssetImage('assets/images/sinhala.png')
                              : AssetImage('assets/images/english.png'),
                          width: 30,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              value,
                              style: TextStyle(color: Colors.black),
                            )),
                      ],
                    ),
                  );
                }).toList(),
              ),
            )))
          ],
        ),
      )),
    );
    // body: Container(
    //   child: Center(
    //       child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       SizedBox(
    //           height: 40.0,
    //           child: Text(
    //             'Select Language Here',
    //             style: TextStyle(color: Colors.white),
    //           )),
    //       DropdownButton(
    //         style: TextStyle(color: Colors.green),
    //         value: 'Sinhala',
    //         isDense: true,
    //         icon: Icon(Icons.arrow_drop_down_outlined),
    //         iconSize: 30,
    //         onChanged: (String newValue) {
    //           // somehow set here selected 'value' above whith
    //           if (newValue == 'Sinhala') {
    //             setState(() {
    //               EasyLocalization.of(context).locale = Locale('sk', 'SK');
    //               // context.locale = Locale('sk', 'SK');
    //               Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                     builder: (context) => new SplashScreen()),
    //               );
    //             });
    //           } else {
    //             setState(() {
    //               // context.locale = Locale('en', 'US');
    //               EasyLocalization.of(context).locale = Locale('en', 'US');
    //               Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                     builder: (context) => new SplashScreen()),
    //               );
    //             });
    //           }

    //           // newValue
    //           // via setState or reactive.
    //         },
    //         items: ['Sinhala', 'English'].map((String value) {
    //           return DropdownMenuItem(
    //             value: value,
    //             child: Text(value, style: TextStyle(color: Colors.black)),
    //           );
    //         }).toList(),
    //       ),
    //     ],
    //   )),
    // )
    // );
  }
}

// DropdownButton(
//               value: null,
//               isDense: true,
//               icon: Icon(Icons.arrow_drop_down_outlined),
//               iconSize: 20,
//               dropdownColor: Colors.white,
//               underline: SizedBox(),
//               // style: ,
//               onChanged: (String newValue) {
//                 // somehow set here selected 'value' above whith
//                 if (newValue == 'Sinhala') {
//                   setState(() {
//                     EasyLocalization.of(context).locale = Locale('sk', 'SK');
//                     // context.locale = Locale('sk', 'SK');
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => new SplashScreen()),
//                     );
//                   });
//                 } else {
//                   setState(() {
//                     // context.locale = Locale('en', 'US');
//                     EasyLocalization.of(context).locale = Locale('en', 'US');
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => new SplashScreen()),
//                     );
//                   });
//                 }

//                 // newValue
//                 // via setState or reactive.
//               },
//               items: ['Sinhala', 'English'].map((String value) {
//                 return DropdownMenuItem(
//                   value: value,
//                   child: Text(value, style: TextStyle(color: Colors.black)),
//                 );
//               }).toList(),
//             ),
