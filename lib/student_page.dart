import 'dart:ffi';

import 'package:flutter/material.dart';

import 'about_page.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({Key? key}) : super(key: key);

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  bool x_value=false;
  bool y_value=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Found me"),
        leading:Icon(Icons.home),
        actions: [
          Icon(Icons.menu),
        ],
      ),

      body: Column(
        children: [
Container(
 child: Checkbox(value: x_value,

     onChanged: (value){
    setState(){  Text("Check");
    }
    ListTile(
      title: Text("Check"),
      subtitle: Text("If you check banana"),
    );
  }
  ),
),


        SizedBox(
          height: 20,
        ),

        Container(
          padding: EdgeInsets.only(right: 0,bottom: 0,),
        child: ActionChip(label: Text("back"), onPressed:(){
          Navigator.push(context,
              MaterialPageRoute(builder: (contex) => AboutPage()));
            }),
          ),
        ],
      ),
    );
  }
}
