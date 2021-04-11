import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text("MY ACCOUNT", style: TextStyle(color: Colors.black),),
      ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(

              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.geeklawblog.com/wp-content/uploads/sites/528/2018/12/liprofile-656x369.png"
                          ),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: Container(
                      alignment: Alignment(0.0,2.5),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://p.favim.com/orig/2019/02/12/profile-pictures-pfp-girl-profile-picture-Favim.com-6894559.jpg"
                        ),
                        radius: 60.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Allison Perry",style: TextStyle(
                      fontSize: 25.0,
                      color:Colors.black,
                      fontWeight: FontWeight.w600
                  ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("Edit Profile Page");
                  },
                  child: Text(
                    "Edit Profile",style: TextStyle(
                      fontSize: 18.0,
                      color:Colors.black45,
                      fontWeight: FontWeight.w300
                  ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.notifications_none, size: 35, color: Colors.redAccent,),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Notifications', style: TextStyle(
                        fontSize: 20
                      ),),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                color: Colors.black26,
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.local_shipping_outlined, size: 35, color: Colors.redAccent,),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('My Orders', style: TextStyle(
                        fontSize: 20
                      ),),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                color: Colors.black26,
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.settings, size: 35, color: Colors.redAccent,),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Account Setting', style: TextStyle(
                        fontSize: 20
                      ),),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                color: Colors.black26,
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.notifications_none, size: 35, color: Colors.redAccent,),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Notifications', style: TextStyle(
                          fontSize: 20
                      ),),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                color: Colors.black26,
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.local_shipping_outlined, size: 35, color: Colors.redAccent,),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('My Orders', style: TextStyle(
                          fontSize: 20
                      ),),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                color: Colors.black26,
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.settings, size: 35, color: Colors.redAccent,),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Account Setting', style: TextStyle(
                          fontSize: 20
                      ),),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                color: Colors.black26,
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),



              ],
            ),
          ),
        )
    );
  }
}