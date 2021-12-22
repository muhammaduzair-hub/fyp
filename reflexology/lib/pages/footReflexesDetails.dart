// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';




class reflexesDetailsPage extends StatefulWidget {
 // reflexesDetailsPage({Key key, this.title}) : super(key: key);

  

  //final String title;

  @override
  _reflexesDetailsPageState createState() => _reflexesDetailsPageState();
}
class _reflexesDetailsPageState extends State<reflexesDetailsPage>{
  @override
  Widget build(BuildContext context) {
    MaterialApp(
      
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
        
      ),
       
    );
   return Scaffold(
     backgroundColor: Colors.lightBlueAccent[100],
     
     
      // appBar: AppBar(
      //   title: Text("Foot Reflexology"),
      // ),

       body:
       //:Image(
      //   image: AssetImage('assets/chartt.png'),
        

     Center(
       child: Container(
          color:Colors.lightBlueAccent[100],
          child: Text('DETAIL ABOUT PRESSURE POINT',style: TextStyle(fontWeight: FontWeight.bold)),
          constraints: BoxConstraints(
              maxHeight: 300.0,
              maxWidth: 200.0,
              minWidth: 150.0,
              minHeight: 150.0
          ),
        ),
     ),
    );
    
  }

}