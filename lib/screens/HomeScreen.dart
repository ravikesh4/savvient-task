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
                      builder: (context) => ProfileUI2(),
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
      body: ListView(

        children: [
          for (var ci = 0; ci < _category.length; ci++)
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _category.length,
              itemBuilder: (context, index) {
                if(_categoryName[ci] == _category[index]["category_name"])
                  return
                  ListTile(
                  title: Text(_category[index]["item_name"]),
                  subtitle: Text(
                      "${_categoryName[ci]}"),
                );
                return Spacer();
              },
            ),
        ],
      ),
    );
  }
}
