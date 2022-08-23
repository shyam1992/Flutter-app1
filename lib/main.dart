import 'package:flutter/material.dart';
import 'package:app1/calendarPage.dart';
import './firstpage.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => Firstpage(),
      '/calendar': (context) => CalendarPage()
    },
  ));
}
