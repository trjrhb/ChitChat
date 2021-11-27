import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chit_chat/widgets/rounded_rectangle_text_btn.dart';
import 'package:chit_chat/widgets/gradient_background.dart';
import 'package:chit_chat/assets/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    initializeFirebase();
  }

  Future initializeFirebase() async {
    // Initalize Firebase
    await Firebase.initializeApp();

    //final refUser = FirebaseFirestore.instance.collection('session').doc();
    //await refUser.set({'username': 'john'});
    /*
    final firestoreInstance = FirebaseFirestore.instance;
    var result = await firestoreInstance.collection("user").get();
    result.docs.forEach((res) {
      print(res.data());
    }); */
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; // 392
    double screenHeight = MediaQuery.of(context).size.height; // 781

    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Center(
            child: Stack(
          children: <Widget>[
            const GradientBackground(),
            Image.asset(
              'lib/assets/images/home_page.png',
            ),
            Center(
                child: Column(children: <Widget>[
              const Expanded(
                child: SizedBox(
                  width: 100,
                ),
              ),
              StartSessionButton(
                "Start Session".toUpperCase(),
                AppColors.buttonColor,
                'loadingSession',
                width: screenWidth * 0.84,
              ),
              SizedBox(height: screenHeight * 0.025),
            ]))
          ],
        )));
  }
}
