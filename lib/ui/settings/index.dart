// import 'dart:js_util';

import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart'; //For creating the SMTP Server
// import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';
import 'package:flutter/services.dart';
import 'package:flutter_launch/flutter_launch.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'package:easy_localization_loader/easy_localization_loader.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  String emailText;
  String fullname;
  String phoneText;
  String messageText;
  FocusNode _focusNode;
  bool _autoValidate = false;
  bool loading = false;
  String ssssss;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // String _platformVersion = 'Unknown';

  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  void whatsAppOpenSinhala() async {
    bool whatsapp = await FlutterLaunch.hasApp(name: "whatsapp");

    if (whatsapp) {
      await FlutterLaunch.launchWathsApp(
          phone: "+94740771333", message: "Hello, flutter_launch");
    } else {
      print("Whatsapp não instalado");
    }
  }

  void whatsAppOpenEnglish() async {
    bool whatsapp = await FlutterLaunch.hasApp(name: "whatsapp");

    if (whatsapp) {
      await FlutterLaunch.launchWathsApp(
          phone: "+447784 056694", message: "Hello, flutter_launch");
    } else {
      print("Whatsapp não instalado");
    }
  }

  final nameHolder1 = TextEditingController();
  final nameHolder2 = TextEditingController();
  final nameHolder3 = TextEditingController();
  final nameHolder4 = TextEditingController();

  clearTextInput() {
    nameHolder1.clear();
    nameHolder2.clear();
    nameHolder3.clear();
    nameHolder4.clear();
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  void submit() async {
    String username = 'wajirabuddhi.Thero.app@gmail.com';
    String password = 'Nibbana@app2021';
    bool sendEmail = false;

    if (_formKey.currentState.validate()) {
      // text in form is valid
      final smtpServer = gmail(username, password);
      final message = Message()
        ..from = Address(username, '')
        ..recipients.add('info.thepathtonibbana@gmail.com')
        // ..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
        ..bccRecipients.add(Address('wajirabuddhi.Thero.app@gmail.com'))
        ..subject = 'Nibbāna app inquiry'
        // ..text = 'This is the plain text.\nThis is line 2 of the text part.'
        ..html =
            "Full Name:${fullname} <br/> Phone Number: ${phoneText}<br/> Email:${emailText} <br/> Message: ${messageText}";

      try {
        setState(() {
          loading = true;
          _autoValidate = false;
        });
        final sendReport = await send(message, smtpServer);
        setState(() {
          sendEmail = true;
          // fullname = "";
          // emailText = "";
          // phoneText = "";
          // messageText = "";
          _autoValidate = false;
        });
        clearTextInput();
        print('Message sent: ' + sendReport.toString());
        setState(() {
          loading = false;
          _autoValidate = false;
        });
      } on MailerException catch (e) {
        print('Message not sent.');
        print(e);
        for (var p in e.problems) {
          print('Problem: ${p.code}: ${p.msg}');
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: [
            new Form(
              key: _formKey,
              autovalidate: false,
              child: new Column(
                children: [
                  new SizedBox(
                      child: Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        context.locale == Locale('en', 'US')
                            ? Text(
                                "Contact Us",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w800),
                              )
                            : Text(
                                "අප අමතන්න",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w800),
                              )
                      ],
                    ),
                    height: 70.0,
                  )),
                  new ListTile(
                    leading: const Icon(Icons.person),
                    title: new TextFormField(
                      controller: nameHolder1,
                      // autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: new InputDecoration(
                        hintText: context.locale == Locale('en', 'US')
                            ? "Name"
                            : "නම",
                      ),
                      keyboardType: TextInputType.name,
                      onChanged: (text) {
                        setState(() {
                          fullname = text;
                        });
                      },
                      validator: (value) =>
                          value.isEmpty ? 'Name cannot be blank' : null,
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.phone),
                    title: new TextFormField(
                      controller: nameHolder2,
                      // autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: new InputDecoration(
                        hintText: context.locale == Locale('en', 'US')
                            ? "Phone"
                            : "දුරකථනය",
                      ),
                      keyboardType: TextInputType.phone,
                      onChanged: (text) {
                        setState(() {
                          phoneText = text;
                        });
                      },
                      validator: (value) =>
                          value.isEmpty ? 'Phone cannot be blank' : null,
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.email),
                    title: new TextFormField(
                      controller: nameHolder3,
                      // autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (text) {
                        setState(() {
                          emailText = text;
                        });
                      },
                      decoration: new InputDecoration(
                        hintText: context.locale == Locale('en', 'US')
                            ? "Email"
                            : "ඊ-මේල් ලිපිනය",
                      ),
                      validator: (value) =>
                          value.isEmpty ? 'Email cannot be blank' : null,
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.message),
                    title: new TextFormField(
                        controller: nameHolder4,
                        // autovalidateMode: AutovalidateMode.onUserInteraction,
                        maxLines: 5,
                        keyboardType: TextInputType.text,
                        decoration: new InputDecoration(
                          hintText: context.locale == Locale('en', 'US')
                              ? "Message"
                              : "ඔබගේ ප්‍රශ්න/අදහස් සඳහන් කරන්න",
                          fillColor: Colors.grey,
                        ),
                        onChanged: (text) {
                          setState(() {
                            messageText = text;
                          });
                        },
                        validator: (value) =>
                            value.isEmpty ? 'Message cannot be blank' : null),
                  ),
                  new Container(
                      padding: const EdgeInsets.only(
                          left: 0.0, top: 40.0, bottom: 40.0),
                      child: new FlatButton(
                        minWidth: 200.0,
                        height: 40.0,
                        color: Colors.grey[900],
                        child: setUpButtonChild(),
                        onPressed: loading ? submit : submit,
                      )),
                  new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: context.locale == Locale('en', 'US')
                          ? [
                              ListTile(
                                leading: new Image.asset(
                                  'assets/images/whatsapp-black.png',
                                  fit: BoxFit.contain,
                                  height: 30,
                                  width: 30,
                                ),
                                title: new FlatButton(
                                  padding: EdgeInsets.zero,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Sri Lankans",
                                        style: TextStyle(fontSize: 16.0),
                                      )
                                    ],
                                  ),
                                  onPressed: () {
                                    whatsAppOpenSinhala();
                                  },
                                ),
                              ),
                              new ListTile(
                                leading: new Image.asset(
                                  'assets/images/whatsapp-black.png',
                                  fit: BoxFit.contain,
                                  height: 30,
                                  width: 30,
                                ),
                                title: new FlatButton(
                                  padding: EdgeInsets.zero,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Non Sri Lankans",
                                        style: TextStyle(fontSize: 16.0),
                                      )
                                    ],
                                  ),
                                  onPressed: () {
                                    whatsAppOpenEnglish();
                                  },
                                ),
                              )
                            ]
                          : [
                              new ListTile(
                                leading: new Image.asset(
                                  'assets/images/whatsapp-black.png',
                                  fit: BoxFit.contain,
                                  height: 30,
                                  width: 30,
                                ),
                                title: new FlatButton(
                                  padding: EdgeInsets.zero,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "වට්සැප් ඇමතීම",
                                        style: TextStyle(fontSize: 16.0),
                                      )
                                    ],
                                  ),
                                  onPressed: () {
                                    whatsAppOpenSinhala();
                                  },
                                ),
                              )
                            ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget setUpButtonChild() {
    if (!loading) {
      return new Text(
        context.locale == Locale('en', 'US') ? "Submit" : "යොමුකරන්න",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      );
    } else if (loading) {
      return SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ));
    } else {
      return Icon(Icons.check, color: Colors.white);
    }
  }
}
