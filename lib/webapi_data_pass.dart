import 'package:flutter/material.dart';

class web_api_data_view extends StatefulWidget {
  @override
  var api_data;
  web_api_data_view(this.api_data);

  _web_api_data_viewState createState() =>
      _web_api_data_viewState(this.api_data);
}

class _web_api_data_viewState extends State<web_api_data_view> {
  var api_data;
  _web_api_data_viewState(this.api_data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show web api data"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              child: Text(
                "userId: ${api_data['userId']}",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent),
              ),
            ),
          ),
          Container(
            child: Text(
              "id: ${api_data['id']}",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
          ),
          Container(
            child: Text(
              "title: ${api_data['title']}",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Text(
                "body: ${api_data['body']}",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
