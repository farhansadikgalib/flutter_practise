import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';

class j_listview extends StatefulWidget {
  @override
  _j_listviewState createState() => _j_listviewState();
}

class _j_listviewState extends State<j_listview> {
  List datax;
  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/dataX.json');
    setState(() {
      datax = jsonDecode(jsonText);
    });
    //print(jsonText);
    return 'success';
  }

  @override
  void initState() {
    this.loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Json Listview"),
        ),
        body: ListView.builder(
            itemCount: datax.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      child: Text(datax[index]['name'][0]),
                    ),
                    title: Text(datax[index]['name']),
                    subtitle: Text(datax[index]['phone']),
                  ),
                ],
              );
            }));
  }
}
