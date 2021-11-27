import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chit_chat/widgets/rounded_rectangle_text_btn.dart';
import 'package:chit_chat/assets/colors.dart';
import 'package:chit_chat/widgets/gradient_background.dart';
import 'package:chit_chat/models/session_data.dart';
import 'package:chit_chat/models/session_service.dart';

class LoadingSessionPage extends StatefulWidget {
  const LoadingSessionPage({Key? key}) : super(key: key);

  @override
  _LoadingSessionPageState createState() => _LoadingSessionPageState();
}

class _LoadingSessionPageState extends State<LoadingSessionPage> {
  void findSession() {
    readAllSessions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const GradientBackground(),
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Waiting for Partner'.toUpperCase(),
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 30,
                  color: AppColors.buttonColor,
                ),
              ),
              TextButton(
                  child: Text("Cancel".toUpperCase()),
                  // Text creation
                  style: TextButton.styleFrom(
                      primary: AppColors.buttonColor,
                      textStyle: TextStyle(fontFamily: 'Avenir', fontSize: 20)),
                  onPressed: () {
                    Navigator.pop(context, '/');
                  }),
              TextButton(
                  child: Text("Bypass".toUpperCase()),
                  // Text creation
                  style: TextButton.styleFrom(
                      primary: AppColors.buttonColor,
                      textStyle: TextStyle(fontFamily: 'Avenir', fontSize: 20)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/messagingPage');
                  }),
            ]),
          )
        ],
      ),
    );
  }
}

Future<List<SessionData>> readAllSessions() async {
  await Firebase.initializeApp();
  SessionService sessionService = SessionService();
  sessionService.getSessionsCollectionFromFirebase();
  return sessionService.getSessions();
}
