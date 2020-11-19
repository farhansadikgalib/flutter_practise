import 'package:flutter/material.dart';
import 'package:flutter_practise/button_pages.dart';
import 'package:flutter_practise/form_validation.dart';
import 'package:flutter_practise/home.dart';
import 'package:flutter_practise/contact_list.dart';
import 'package:flutter_practise/local_json_listview.dart';
import 'package:flutter_practise/json_api.dart';
import 'package:flutter_practise/shared_preferences.dart';
import 'package:flutter_practise/url_launcher.dart';

void main() {
  runApp(
    MaterialApp(
      home: Homepage(),
      title: 'Istagram',
    ),
  );
}

class Homepage extends StatelessWidget {
  final _longtext =
      "I am a student, software engineer, and volunteer currently living in Dhaka, Bangladesh. My interests range from technology to programming. I am also interested in web development, gaming, and innovation.You can click the button above to hire me. If you’d like to get in touch, feel free to say hello through any of the social links below. ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brain Station'),
        actions: <Widget>[
          PopupMenuItem(
            child: Icon(Icons.face),
          ),
          PopupMenuButton(
              offset: Offset(0, 55),
              elevation: 10,
              onSelected: (val) {
                print(val);
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(value: 'about_us', child: Text("about us")),
                  PopupMenuItem(value: 'settings', child: Text("settings")),
                  PopupMenuItem(value: 'pop', child: Text("pop Up")),
                  PopupMenuItem(value: 'rate_us', child: Text("rate us")),
                ];
              })
        ],
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.network('https://picsum.photos/id/1005/367/267'),
                    Positioned(
                      bottom: 100,
                      left: 50,
                      child: Icon(
                        Icons.alarm,
                        color: Colors.red,
                      ),
                    ),
                    Positioned(
                      bottom: 100,
                      right: 50,
                      child: Icon(
                        Icons.bolt,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(18, 7, 7, 7),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.airplanemode_on),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.alarm),
              ),
              Container(
                margin: EdgeInsets.all(7),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Icon(Icons.person),
              ),
              Container(
                margin: EdgeInsets.all(7),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.cast_connected),
              ),
              Container(
                margin: EdgeInsets.all(7),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.nfc),
              ),
              Container(
                margin: EdgeInsets.all(7),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.pan_tool_sharp),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 50,
              ),
              Container(
                  child: RaisedButton(
                textColor: Colors.white,
                color: Colors.redAccent,
                child: Text('Home Page'),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Home()));
                },
              )),
              SizedBox(
                width: 15,
              ),
              Container(
                  child: RaisedButton(
                textColor: Colors.white,
                color: Colors.redAccent,
                child: Text('People Page'),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => contact_list()));
                },
              )),
              SizedBox(
                width: 15,
              ),
              Container(
                  child: RaisedButton(
                textColor: Colors.white,
                color: Colors.redAccent,
                child: Text('Main Page'),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Button_page_()));
                },
              )),
            ],
          ),
          Column(
            children: [
              // Container(
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: <Widget>[
              //       _color_box(),
              //       _color_box(),
              //       _color_box(),
              //     ],
              //   ),
              // ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  child: Text(_longtext +
                      _longtext +
                      _longtext +
                      _longtext +
                      _longtext),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: RaisedButton(
                            child: Text("Form Validation"),
                            color: Colors.redAccent,
                            textColor: Colors.white,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => form_validation()));
                            }),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: RaisedButton(
                            child: Text("Url Launcher"),
                            color: Colors.redAccent,
                            textColor: Colors.white,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Url_Launcher()));
                            }),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: RaisedButton(
                            child: Text("Shared Pref"),
                            color: Colors.redAccent,
                            textColor: Colors.white,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => shared_preferences()));
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(_longtext +
                      _longtext +
                      _longtext +
                      _longtext +
                      _longtext),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: RaisedButton(
                      child: Text("Local Json"),
                      color: Colors.redAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => j_listview()));
                      }),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: RaisedButton(
                      child: Text("Json APi data"),
                      color: Colors.redAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => jsonapii()));
                      }),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: RaisedButton(
                      child: Text("Shared Preferences"),
                      color: Colors.redAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => shared_preferences()));
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _color_box() {
  return Container(
    height: 75,
    width: 75,
    decoration: BoxDecoration(
      color: Colors.lightGreen,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Icon(Icons.pan_tool_sharp),
  );
}
