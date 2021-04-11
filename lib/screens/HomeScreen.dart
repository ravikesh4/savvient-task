
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_task/screens/profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List _category = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/category.json');
    final data = await json.decode(response);
    setState(() {
      _category = data;
      _category.sort((a, b) => a["item_name"].compareTo(b["item_name"]));
      print(_category);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readJson();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileUI2(),));
              },
              child: Icon(Icons.supervised_user_circle_rounded, color: Colors.black,))
        ],
      ),
      // body: Column(
      //   children: [
      //     for( var index = 0 ; index < _category.length; index++ )
      //     Container(
      //       child: Text(_category[index]["item_name"]),
      //     ),
      //   ],
      // ),
      body: ListView.separated(
        itemCount: _category.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_category[index]["item_name"]),
          );
        },
      ),
    );
  }
}
