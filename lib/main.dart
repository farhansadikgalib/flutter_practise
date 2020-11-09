import 'package:flutter/material.dart';
import 'package:flutter_practise/button_pages.dart';
import 'package:flutter_practise/home.dart';
import 'package:flutter_practise/contact_list.dart';

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
                  height: 50,
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