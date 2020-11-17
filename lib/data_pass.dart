import 'package:flutter/material.dart';

class local_data_pass extends StatefulWidget {
  @override
  var m;
  local_data_pass(this.m);
  _local_data_passState createState() => _local_data_passState(this.m);
}

class _local_data_passState extends State<local_data_pass> {
  var m;
  _local_data_passState(this.m);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Clicked data"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              child: Text(
                "Name: ${m['name']}",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent),
              ),
            ),
          ),
          Container(
            child: Text(
              "phone: ${m['phone']}",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
          ),
        ],
      ),
    );
  }
}
