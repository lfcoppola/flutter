import 'package:flutter/material.dart';
import 'package:flutterproject/pages/home.dart';
import 'package:flutterproject/pages/loading.dart';
import 'package:flutterproject/pages/choose_location.dart';

const primaryColor = Colors.deepPurpleAccent;

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        // home: Home(),
        routes: {
          '/': (context) => Loading(),
          '/home': (context) => Home(),
          '/location': (context) => ChooseLocation(),
        },
        // theme: ThemeData(
        //   fontFamily: 'Rubik',
        // ),
      ),
    );
