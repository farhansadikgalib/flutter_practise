import 'package:flutter/material.dart';

class Button_page_ extends StatefulWidget {
  @override
  _Button_page_State createState() => _Button_page_State();
}

class _Button_page_State extends State<Button_page_> {
  String txt_data = "Farhan";

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_box),
          onPressed: () {
            setState(() {
              count++;
            });
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      body: ListView(
        children: <Widget>[
          Text(txt_data),
          Text(
            "Press Count: ${count}",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrangeAccent),
          ),
          RaisedButton(
              child: Text(
                "Press Here",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.red,
              onPressed: () {
                print("pressed");

                setState(() {
                  txt_data = "Boom Boom";
                  count++;
                });
              }),
          FlatButton(
              height: 50,
              minWidth: 75,
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: Text("flat button")),
          IconButton(
              icon: Icon(Icons.business_center),
              onPressed: () {
                setState(() {
                  count++;
                });
              }),
        ],
      ),
    );
  }
}
