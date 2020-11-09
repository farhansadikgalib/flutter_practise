import 'package:flutter/material.dart';

// ignore: camel_case_types
class contact_list extends StatelessWidget {
  List contacts = [
    {
      "name": "farhan",
      "phone": "01773076754",
    },
    {
      "name": "sadik",
      "phone": "01773076754",
    },
    {
      "name": "galib",
      "phone": "01773076754",
    },
    {
      "name": "monjur",
      "phone": "01773076754",
    },
    {
      "name": "rahman",
      "phone": "01773076754",
    },
    {
      "name": "Ani",
      "phone": "01773076754",
    },
    {
      "name": "Montu",
      "phone": "01773076754",
    },
    {
      "name": "Sobi",
      "phone": "01773076754",
    },
    {
      "name": "farhan",
      "phone": "01773076754",
    },
    {
      "name": "farhan",
      "phone": "01773076754",
    },
    {
      "name": "farhan",
      "phone": "01773076754",
    },
    {
      "name": "farhan",
      "phone": "01773076754",
    },
    {
      "name": "farhan",
      "phone": "01773076754",
    },
    {
      "name": "farhan",
      "phone": "01773076754",
    },
    {
      "name": "farhan",
      "phone": "01773076754",
    },
    {
      "name": "farhan",
      "phone": "01773076754",
    },
    {
      "name": "farhan",
      "phone": "01773076754",
    },
    {
      "name": "farhan",
      "phone": "01773076754",
    },
    {
      "name": "farhan",
      "phone": "01773076754",
    },
    {
      "name": "farhan",
      "phone": "01773076754",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Text(contacts[index]["name"][0]),
                  ),
                  title: Text(contacts[index]["name"]),
                  subtitle: Text(contacts[index]["phone"]),
                  onTap: () {},
                )
              ],
            ),
          );
        },
      ),
    );
  }

  // Widget _ListTiles(){

  //     return Container(

  //     )

  // }

}
