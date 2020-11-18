import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class shared_preferences extends StatefulWidget {
  @override
  _shared_preferencesState createState() => _shared_preferencesState();
}

class _shared_preferencesState extends State<shared_preferences> {
  int counter = 0;

  init() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    int c = (sp.getInt('counter') ?? 0);

    setState(() {
      this.counter = c;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  increment() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    setState(() {
      this.counter++;
      sp.setInt('counter', this.counter);
    });
  }

  decrement() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    setState(() {
      this.counter--;

      sp.setInt('counter', this.counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "$counter",
            style: TextStyle(fontSize: 25),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  color: Colors.greenAccent,
                  child: Text(
                    "+",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  onPressed: () {
                    this.increment();
                  }),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                  color: Colors.redAccent,
                  child: Text(
                    "-",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  onPressed: () {
                    this.decrement();
                  })
            ],
          )
        ],
      ),
    );
  }
}
