import 'package:flutter/material.dart';
import 'package:flutternavigationdraer/new_page.dart';

import 'home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.orange
      ),

      home: new HomePage(),

//      routes: {
//        "/a": (BuildContext context) => new NewPage("Page One"),
//    },
    );
  }
}
