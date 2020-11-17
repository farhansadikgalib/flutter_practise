import 'package:flutter/material.dart';
import 'package:flutter_practise/webapi_data_pass.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class jsonapii extends StatefulWidget {
  @override
  _jsonapiiState createState() => _jsonapiiState();
}

class _jsonapiiState extends State<jsonapii> {
  List posts;

  Future<bool> _getPosts() async {
    String serviceUrl = "https://jsonplaceholder.typicode.com/posts";
    var response = await http.get(serviceUrl);

    setState(() {
      posts = json.decode(response.body.toString());
      print(posts);
    });

    return true;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Json Data from APi"),
        ),
        body: new ListView.builder(
            itemCount: posts == null ? 0 : posts.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(posts[index]['title']),
                subtitle: Text(posts[index]['body']),
                onTap: () {
                  Route route = MaterialPageRoute(
                      builder: (context) => web_api_data_view(posts[index]));
                  Navigator.push(context, route);
                },
              );
            }));
  }
}
