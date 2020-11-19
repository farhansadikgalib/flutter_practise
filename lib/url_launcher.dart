import 'package:flutter/material.dart';

class Url_Launcher extends StatefulWidget {
  @override
  _Url_LauncherState createState() => _Url_LauncherState();
}

class _Url_LauncherState extends State<Url_Launcher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Url Launcher"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.orangeAccent,
              child: Text(
                "URL",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () async {
                // const u = 'tel:+1 555 010 999';
                // if (await canLaunch(u)) {
                //   await launch(u);
                // } else {
                //   return null;
                // }
              },
            )
          ],
        ),
      ),
    );
  }
}
