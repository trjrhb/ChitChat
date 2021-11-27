import 'package:flutter/material.dart';
import 'package:chit_chat/pages/home_page.dart';
import 'package:chit_chat/pages/loading_page.dart';
import 'package:chit_chat/pages/messaging_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => MyHomePage(),
      '/loadingSession': (context) => LoadingSessionPage(),
      '/messagingPage': (context) => MessagingPage(),
    },
  ));
}
