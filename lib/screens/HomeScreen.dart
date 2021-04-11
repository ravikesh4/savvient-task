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
  List _categoryName = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/category.json');
    final data = await json.decode(response);
    setState(() {
      _category = data;
      for (var index = 0; index < _category.length; index++)
        _categoryName.add(data[index]['category_name']);
      _categoryName = _categoryName.toSet().toList();
      _category.sort((a, b) => a["item_name"].compareTo(b["item_name"]));
      print("category name ${_categoryName}");
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
        title: Text(
          'Home Screen',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  Icons.supervised_user_circle_rounded,
                  color: Colors.black,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for(int index = 0; index < _categoryName.length ; index++)
            Column(
              children: [
                ListTile(
                    title: Text(_categoryName[index]),
                ),
                for(int i = 0; i < _category.length ; i++)
                  if(_categoryName[index] == _category[i]["category_name"])
                    ListTile(
                      title: Text(_category[i]["item_name"]),
                    ),
              ],
            ),

          ],
        ),
      )
    );
  }
}


// ListView(
// children: _categoryName.map((cname) =>
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// ListTile(
// title: Text(cname),
// ),
// ListView.builder(
// shrinkWrap: true,
// physics: ClampingScrollPhysics(),
// itemCount: _category.length,
// itemBuilder: (context, index) {
// if(cname == _category[index]["category_name"])
// return
// ListTile(
// title: Text(_category[index]["item_name"]),
// );
// return Spacer();
// },
// ),
// ],
// )).toList(),
// ),