import 'package:flutter/material.dart';
import 'package:nibbana_test/ui/home/index.dart';
import 'dart:developer' as developer;
import 'package:nibbana_test/ui/splash/index.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:nibbana_test/ui/pdf-screen/view-pdf.dart';
import 'package:nibbana_test/ui/splash/index.dart';

var globalContext;
void main() {
  developer.log('log me', name: 'my.app.category');

  developer.log('log me 1', name: 'my.other.category');
  developer.log('log me 2', name: 'my.other.category');
}

class PdfSCreen extends StatefulWidget {
  PdfSCreen({Key key}) : super(key: key);
  @override
  _PdfSCreenState createState() => _PdfSCreenState();
}

class _PdfSCreenState extends State<PdfSCreen> {
  // String dropdownValue = 'Sinhala';
  void _incrementCounter() {
    setState(() {});
  }

  // @override
  // void initState() {

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

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      primary: Colors.white,
      // minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
      backgroundColor: Colors.white);

  @override
  Widget build(BuildContext context) {
    // const color = const Colors.grey[900]);
    globalContext = context;
    return new Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new RoutesScreen()),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Container(
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 50),
            padding: EdgeInsets.all(10),
            // color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: context.locale == Locale('en', 'US')
                      ? Image.asset(
                          'assets/images/EnglishE-bookPic.jpg', width: 320,
                          // height: 110.0,
                          fit: BoxFit.contain,
                        )
                      : Image.asset(
                          'assets/images/sssss.jpg',
                          width: 320,
                          // height: 110.0,
                          fit: BoxFit.contain,
                        ),
                ),
                // Image.asset('assets/images/EnglishE-bookPic.jpg',
                //     width: 320, fit: BoxFit.contain),
                Container(
                    margin: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                              color: Color.fromRGBO(0, 160, 227, 1))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                        );
                      },
                      padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                      color: Colors.white,
                      textColor: Color.fromRGBO(0, 160, 227, 1),
                      child: Text(
                          context.locale == Locale('en', 'US')
                              ? "View PDF E-Book"
                              : "PDF ඊ-පොත බලන්න",
                          style: TextStyle(fontSize: 15)),
                    )),

                Container(
                    margin: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                    child: Text(
                      context.locale == Locale('en', 'US')
                          ? 'During a time when it was rare to hear the true pristine Dhamma which was proclaimed by The Gautama Buddha, two and half millennia ago, a great Arahant (A Noble being), The Most Venerable Maha Arahant Mahanuwara Wajirabuddhi Thero came forth in our time after reaching the pinnacle as a young Noble Being in order to reach out to those in search of this true pristine Buddha Dhamma. The great being, The Most Venerable Maha Arahant Mahanuwara Wajirabuddhi Thero conducted a series of discussions on the Pristine Buddha Dhamma as to what it truly meant and explained it with abundant clarity under four Dhamma topics; "Sadhaham Maga", "Lōkaya", "Shraddhāva" and the "Buddha Sāsanaya" which were then recorded and broadcasted on every full-moon Poya day via the Kandurata FM Radio station of Sri Lanka Broadcasting Corporation (SLBC) since January of 2006. The recorded set of sermons were later put in print form and a book was published in Sinhala language in the year 2008 as "ගෞතම බුදුන් වහන්සේ වදාළ නිවන් මග”. It was then translated in to English in the year 2010 as “The Path to Nibbāna as Declared by The Gautama Buddha” and as well as many other foreign languages. At the time these sermons had a very positive impact amongst the Pristine Dhamma seekers in Sri Lanka as well as from around the world, and since then it has been highly regarded and accepted as the authentic true teachings of The Gautama Sammā Sambuddha.'
                          : 'නිවන් මග අසන්නට නොලැබුනු කාලයක ගෞතම බුදුන් වහන්සේ වදාළ නිවැරදි නිර්මල නිර්වාන මාර්ගය අතිපූජනීය මහනුවර වජිරබුද්ධි මහ තෙරුණුවන් විසින් 2006 වසරේදි දේශනා කළ අතර, එය ශ්‍රී ලංකා ගුවන් විදුලි සංස්ථාවේ කඳුරට සේවය ඔස්සේ විකාශනය විය.එකල සමාජය අතරට ගිය මෙ⁣ම දේශනාවලිය, සමාජයේ ඉමහත් ගෞරවයටත්, පිළිගැනිමටත් ලක්විය. "සදහම් මග", "ලෝකය", "ශ්‍රද්ධාව" සහ "බුද්ධ ශාසනය" යන මාථෘකා ඔස්සේ එදවස පටිගත කළ මෙම මූලික දේශනාවන් සතර එකට ගොණුකොට 2008 වසරේදි "ගෞතම බුදුන් වහන්සේ වදාළ නිවන් මග" යන නමින් ග්‍රන්ථාරූඪ කර ප්‍රකාශයට පත්කරන ලදි. එම පොත 2010 වසරේදි ඉංග්‍රිසි බසට "The Path to Nibbana: As Declared by the Gautama Buddha" යන නමින් පරිවර්තනය කළ අතර ඉන් පසුව එය ලොව පුරා බොහෝ වෙනත් භාශාවන්ටද පරිවර්තනය විය.',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.justify,
                    )),
                Container(
                    margin: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                    child: Text(
                      context.locale == Locale('en', 'US')
                          ? 'ISBN:978-955-30-1089-6'
                          : 'ISBN:978-955-52-4240-0',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          )),
        ));
  }
}
