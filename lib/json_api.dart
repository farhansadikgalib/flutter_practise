import 'package:flutter/material.dart';

class jsonapii extends StatefulWidget {
  @override
  _jsonapiiState createState() => _jsonapiiState();
}

class _jsonapiiState extends State<jsonapii> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Data from APi"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Text("hi baby it's mew"),
          )
        ],
      ),
    );
  }
}
