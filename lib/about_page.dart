import 'package:flutter/material.dart';

import 'student_page.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

  int roll=252902;
  int number=0;
  List Iconss=[
    { 'icon': (Icons.add_call)},
    { 'icon': (Icons.email)} ,
    { 'icon': (Icons.account_box)} ,
    { 'icon': (Icons.account_circle_outlined)} ,
    { 'icon': (Icons.add_a_photo_outlined)} ,
    { 'icon': (Icons.mobile_screen_share_rounded)} ,
    { 'icon': (Icons.add_call)},
    { 'icon': (Icons.email)} ,
    { 'icon': (Icons.account_box)} ,
    { 'icon': (Icons.account_circle_outlined)} ,
    { 'icon': (Icons.add_a_photo_outlined)} ,
    { 'icon': (Icons.mobile_screen_share_rounded)} ,
    { 'icon': (Icons.account_box)} ,
    { 'icon': (Icons.account_circle_outlined)} ,
    { 'icon': (Icons.add_a_photo_outlined)} ,
    { 'icon': (Icons.mobile_screen_share_rounded)} ,
    { 'icon': (Icons.add_call)},
    { 'icon': (Icons.email)} ,
    { 'icon': (Icons.account_box)} ,
    { 'icon': (Icons.account_circle_outlined)} ,
    { 'icon': (Icons.add_a_photo_outlined)} ,
    { 'icon': (Icons.mobile_screen_share_rounded)} ,
  ];
  List Student=[
    {'name':'Uzzal Biswas','Village':'Sadhukhali','email' : 'uzzal.171cse@gmail.com','pic':'image/a.jpg'},
    {'name':'Badhon Mondal','Village':'Dhaka' ,'email' : 'uzzal.171cse@gmail.com','pic':'image/aaaa.jpg'},
    {'name':'Nillay Sarker','Village':'jessore', 'email' : 'uzzal.171cse@gmail.com','pic':'image/c.jpg'},
    {'name':'Ripon Ahammed','Village':'sylet', 'email' : 'uzzal.171cse@gmail.com','pic':'image/b.jpg'},
    {'name':'Aninda Biswas','Village':'borishal', 'email' : 'uzzal.171cse@gmail.com','pic':'image/bb.jpg'},
    {'name':'Karim Biswas','Village':'dhaka'  ,'email' : 'uzzal.171cse@gmail.com','pic':'image/c.jpg'},
    {'name':'Rahim Biswas','Village':'borishal'  ,'email' : 'uzzal.171cse@gmail.com','pic':'image/bbbbbb.jpg'},
    {'name':'Pukale Biswas','Village':'london', 'email' : 'uzzal.171cse@gmail.com','pic':'image/aaaa.jpg'},
    {'name':'Sumi Biswas','Village':'newyork', 'email' : 'uzzal.171cse@gmail.com','pic':'image/aaaaa.jpg'},
    {'name':'Rumi Biswas','Village':'india', 'email' : 'uzzal.171cse@gmail.com','pic':'image/bbb.jpg'},
    {'name':'Nihal Biswas','Village':'srilanka' ,'email' : 'uzzal.171cse@gmail.com','pic':'image/bbbb.jpg'},
    {'name':'kanij Biswas','Village':'UK', 'email' : 'uzzal.171cse@gmail.com','pic':'image/bbbbb.jpg'},
    {'name':'aaaaipon Biswas','Village':'USA', 'email' : 'uzzal.171cse@gmail.com','pic':'image/aaa.jpg'},
    {'name':'B Biswas','Village':'Sadhukhali', 'email' : 'uzzal.171cse@gmail.com','pic':'image/bb.jpg'},
    {'name':'C Biswas','Village':'Sadhukhali', 'email' : 'uzzal.171cse@gmail.com','pic':'image/a.jpg'},
    {'name':'D Biswas','Village':'Sadhukhali', 'email' : 'uzzal.171cse@gmail.com','pic':'image/c.jpg'},
    {'name':'E Biswas','Village':'Sadhukhali', 'email' : 'uzzal.171cse@gmail.com','pic':'image/aaaa.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About page"),
          actions: [
            Image.asset("image/b.jpg",height: 20,width: 20,),
          ],
        ),
      body: Row(
   children: [
      Expanded(
        flex: 4,
        child: Container(
            height: double.infinity,
            width: 200,
            child: ListView.builder(
                itemCount: Student.length,
                itemBuilder: ((context, index) {
               return Card(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(100)
                 ),
                 elevation: 10,
                 color: Colors.lightGreenAccent[100],
                 child: ListTile(
                   subtitle: Text(Student[index]['Village']),
                   title: Text(Student[index]['name']),
                 trailing:Icon(Iconss[index]['icon']),

                 leading: CircleAvatar(
                   backgroundColor: Colors.purpleAccent,
                   child: CircleAvatar(
                     radius: 200,
                     child: ActionChip(label:Image.asset(Student[index]['pic'],fit: BoxFit.cover,), onPressed:(){
                       Navigator.push(context,
                             MaterialPageRoute(builder: (context)=> StudentPage()));
                     })
                   ),
                 ),

                 ),
               ) ;
                }
              )
            ),
          ),
      ),

],
      ),




















      // body: Container(
      //   child: ListView.builder(
      //       itemCount:Student.length,
      //       itemBuilder:((context, index){
              // return Card(
              //   elevation: 100,
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(50)
              //   ),
              //   child: ListTile(
              //
              //     title:Text(Student[index]['name']),
              //     leading: CircleAvatar(
              //       child: CircleAvatar(
              //         child:Image.network("https://www.bing.com/th?id=OIP.pJYn00pGwuJwwQawoe7TygHaJK&w=150&h=186&c=8&rs=1&qlt=90&o=6&dpr=1.25&pid=3.1&rm=2"),
              //       ),
              //       backgroundColor: Colors.green,
              //     ),
              //   ),
        //       // );
        //     }
        //   ),
        // ),
     // ),
    );
  }
}
