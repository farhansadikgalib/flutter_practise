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
  List unfilterdata;
  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/dataX.json');
    setState(() {
      datax = jsonDecode(jsonText);
    });
    this.unfilterdata = datax;
    print(jsonText);
    return 'success';
  }

  @override
  void initState() {
    this.loadJsonData();
    super.initState();
  }

  searchData(str) {
    var strExist = str.length > 0 ? true : false;

    if (strExist) {
      var filterData = [];

      for (int i = 0; i < unfilterdata.length; i++) {
        if (unfilterdata[i]['name'].contains(str)) {
          filterData.add(unfilterdata[i]);
        }
        setState(() {
          this.datax = filterData;
        });
      }
    } else {
      setState(() {
        this.datax = this.unfilterdata;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Json Listview & Search view"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search here',
                ),
                onChanged: (String str) {
                  this.searchData(str);
                  print(str);
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
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
                  }),
            ),
          ],
        ));
  }
}
