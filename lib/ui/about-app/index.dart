import 'dart:io';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class AboutApp extends StatefulWidget {
  @override
  _AboutAppState createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  englishText() {
    return Column(
      children: [
        // Center(
        //   child: Padding(
        //     padding: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
        //     child: Text(
        //       "A Mahā Buddhaputhra (A great son of The Buddha)",
        //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        //       textAlign: TextAlign.center,
        //     ),
        //   ),
        // ),
        Text(
          "This mobile application which is named as ‘Nibbāna’ along with website named 'The Path to Nibbāna' and the Facebook pages named 'The Path to Nibbāna' (Sinhala only), 'The Buddha`s Teaching on Nibbāna' (English only) and 'සම්මා දිට්ඨි - Sammā Ditthi' (Sinhala only) and the YouTube Channels named 'අතිපූජනීය මහනුවර වජිරබුද්ධි මහ රහතන්වහන්සේ'(Sinhala sermons only) & 'Maha Arahant Mahanuwara Wajirabuddhi Thero' (English translated sermons only) are all designed and maintained by a group of lay individuals who seek the pure Dhamma as proclaimed by The Gautama Buddha. Our wholesome intention is to unearth the noble pristine Dhamma which rests covered by traditional and cultural influences due to time.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "This mobile application is created to help those who are in search of the recorded sermons and the pristine dhamma talks given by the Maha Arahant Mahanuwara Wajirabuddhi Thero who is currently living in the island nation of Sri Lanka. A small group of his lay supporters and followers took the initiative and stepped forward on this meritorious deed, with the Maha Arahant's guidance and permission in order to design and produce this mobile application hoping that it will reach out to such individuals around the world in a more interactive and efficient manner. This mobile application will update and notify all required and relevant information of the Maha Arahant and his latest dhamma talks to his followers. ",
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }

  sinhala() {
    return Column(
      children: [
        Text(
          "'Nibbāna' යන නමින් නිර්මාණය කරන ලද මෙම ජංගම මෘදුකාංග යෙදුම (Mobile Application) සහ අතිපූජනීය මහනුවර වජිරබුද්ධි මහ රහතන්වහන්සේගේ දේශනා ආශ්‍රිතව සැකසුනු 'නිවන් මග' යන නමින් ඇති එම වෙබ් අඩවියද, YouTube හි 'අතිපූජනීය මහනුවර වජිරබුද්ධි මහ රහතන්වහන්සේ' යන නමින් ඇති උන්වහන්සේගේ සියලූම සිංහල බසින් පටිගත කරන ලද දේශනා ඇතුළත් එම චැනලයත්, 'Maha Arahant Mahanuwara Wajirabuddhi Thero' යන නමින් ඇති, ඉංග්‍රීසි බසට පරිවර්තනය කරන ලද සියලූ දේශනා ඇතුළත් එම චැනලයද, එමෙන්ම 'The Path to Nibbāna' සහ 'සම්මා දිට්ඨි - Sammā Ditthi' යන නමින් ඇති Facebook පිටුද, 'The Buddha`s Teaching on Nibbāna' යන නමින් ඇති, ඉංග්‍රිසි බසට පරිවර්තනය කරන ලද උන්වහන්සේගේ දේශනා සහ දහම් පණිවුඩ ඇතුළත් එම Facebook පිටුව ඇතුළු ඉහත සඳහන් ඒ සියල්ලම පවත්වාගෙන යනු ලබන්නේ ගෙෳතම බුදුරජාණන් වහන්සේ විසින් දේශිත නිර්මල බුදු දහම සොයන ගිහි පිරිසක් විසිනි. අපගේ අරමුණ සංස්කෘතික හා සාම්ප්‍රදායික හේතූන් මත වැලලී ගිය නිර්මල බුදු දහම ඉස්මතු කර එය ධම්ම දානය ලෙස ලෝකයාහට බෙදාහැරීමයි.",
          textAlign: TextAlign.justify,
        ),
        Text(
          "අතිපූජනීය මහනුවර වජිරබුද්ධි මහ රහතන්වහන්සේගේ අවසරය මත මෙතෙක් පටිගත කරන ලද එම දේශනා සහ සද්ධර්ම සාකච්ඡා පිළිබඳව තොරතුරු ගවේශනය කරන්නන්හට එය ඉතා පහසුවනසේ, එම සියළුම තොරතුරු එක් රැස් කොට අද ලෝකයේ ඇති නවින තාක්ෂණයන් උපයෝගී කරගනිමින්, එය ධර්ම දානයක් ලෙස බෙදාහැරීම සඳහා, උන්වහන්සේගේ ගිහි දායක කණ්ඩායමක් විසින් 'Nibbāna' යන නමින් මෙම ජංගම මෘදුකාංග යෙදුම (Mobile Application)  නිර්මාණය කොට ඇත.",
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: AppBar(
              title: context.locale == Locale('en', 'US')
                  ? Text("About App")
                  : Text("යෙදුම ගැන"),
              backgroundColor: Colors.grey[900],
              iconTheme: IconThemeData(
                  color: Colors.white,
                  size: 100 // This isn't performing any changes

                  ),
            )),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              // Container(
              //     // height: height,
              //     width: width,
              //     padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
              //     child: Center(
              //         child: new Image(
              //             image:
              //                 AssetImage('assets/images/the_arahath3a.jpg')))),
              Container(
                  // padding: EdgeInsets.all(20),
                  child: Padding(
                padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                child: context.locale == Locale('en', 'US')
                    ? englishText()
                    : sinhala(),
              ))
            ],
          ),
        ));
  }
}
