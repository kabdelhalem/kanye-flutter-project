import 'package:flutter/material.dart';
import 'package:kanye/pages/home.dart';
import 'package:kanye/pages/song.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/', 
    routes: {
    '/': (context) => Home(),
    '/song': (context) => Song(),
    }
  ));
}
