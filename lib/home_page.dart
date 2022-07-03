
import 'package:flutter/material.dart';

import 'about_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // @override
  // void initState() {
  //   Future.delayed(Duration(seconds: 10),(){
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => const AboutPage()),
  //     );
  //   });
  //   // TODO: implement initState
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text('Home page'),
        leading: Icon(Icons.home,size: 33,),
        actions: [
          ActionChip(label:  Icon(Icons.menu,size:33,), onPressed:(){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AboutPage()));
          } )

        ],
      ),
      body: Container(

        child:Row(
          children: [
            Container(
              child: Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    children: [
                      Container(

                        child: Expanded(
                          flex: 5,
                          child:Container(
                            color: Colors.red,
                          ),
                        ),
                      ),

                      Container(
                        child: Expanded(
                          flex: 1,
                          child:Container(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(
                        child: Expanded(
                          flex: 1,
                          child:Container(
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                      Container(
                        child: Expanded(
                          flex: 1,
                          child:Container(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(

                        child: Expanded(
                          flex: 5,
                          child:Container(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              ),
            ),

            Container(
              child: Expanded(
                flex: 1,
                child:Container(
                  color: Colors.blue,
                ),
              ),
            ),

           //work container


            Container(
              child: Expanded(
                flex: 1,
                child:Container(
                  child: Column(
                    children: [
                      Container(
                        child: Expanded(
                          flex: 5,
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        child: Expanded(
                          flex: 3,
                          child: Container(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(
                        child: Expanded(
                          flex: 5,
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),



            // work container


            Container(
              child: Expanded(
                flex: 1,
                child:Container(
                  color: Colors.blue,
                ),
              ),
            ),
            Container(
              child: Expanded(
                flex: 4,
                child:Container(
                  child: Column(
                    children: [
                      Container(

                        child: Expanded(
                          flex: 5,
                          child:Container(
                            color: Colors.red,
                          ),
                        ),
                      ),

                      Container(

                        child: Expanded(
                          flex: 1,
                          child:Container(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(

                        child: Expanded(
                          flex: 1,
                          child:Container(
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                      Container(

                        child: Expanded(
                          flex: 1,
                          child:Container(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(

                        child: Expanded(
                          flex: 5,
                          child:Container(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ) ,
      ),
    );
  }
}
