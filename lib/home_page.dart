import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutternavigationdraer/new_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: debugDefaultTargetPlatformOverride == TargetPlatform.iOS ? 5 : 0,
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(

              accountName: new Text("Sunil"),

              accountEmail: new Text("Sunil.sharma533@gmail.com"),

              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text("S"),
              ),

              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text("S"),
                )
              ],
            ),


            new ListTile(
              title: new Text("Page One"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).pushNamed("/a");
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context)=>new NewPage("Page One")
                )
              );

              }
            ),

            new ListTile(
              title: new Text("Page Two"),
              trailing: new Icon(Icons.arrow_downward),

              onTap: ()
              {
                Navigator.of(context).pop();

                Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context)=>new NewPage("Page Two")
                    )
                );
              },
            ),

            new Divider(),

            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            )

          ],

        ),

      ),

      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),
      ),
    );
  }
}
