import 'package:flutter/material.dart';
import 'package:hng_stage_one/homepage.dart';
import 'webviewcontainer.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileApp(),
    routes: {
      // '/': (context) => ProfileApp(),
      '/webViewContainer': ((context) => WebViewContainer())
    },
  ));
}
