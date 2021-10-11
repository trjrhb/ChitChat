import 'package:flutter/material.dart';
import 'package:chit_chat/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => MyHomePage(),
      //'/third': (context) => ThirdRoute(),
    },
  ));
}
