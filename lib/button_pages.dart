import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';

class Button_page_ extends StatefulWidget {
  @override
  _Button_page_State createState() => _Button_page_State();
}

class _Button_page_State extends State<Button_page_> {
  ///snackbar

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  _showSnackBar() {
    var _snackbar = SnackBar(content: Text("Yeah, You are cool"));

    _globalKey.currentState.showSnackBar(_snackbar);
  }

  ///snackbar
  ///

  _showToast() {
// Fluttertoast.showToast(
//         msg: "This is Center Short Toast",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.CENTER,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.red,
//         textColor: Colors.white,
//         fontSize: 16.0
//     );
  }

  String txt_data = "Farhan";

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
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

          RaisedButton(
              child: Text(
                "Snackbar",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.red,
              onPressed: () {
                setState(() {
                  _showSnackBar();
                });
              }),

          // RaisedButton(
          //     child: Text(
          //       "Snackbar is Here",
          //       style: TextStyle(
          //         fontSize: 18,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //     onPressed: () {

          //           _showSnackBar();

          //       });
        ],
      ),
    );
  }
}
