


import 'package:flutter/material.dart';
import 'package:reflexology/organDetails/armDetails.dart';
import 'package:reflexology/organDetails/bladderDetaiils.dart';
import 'package:reflexology/organDetails/brainDetails.dart';
import 'package:reflexology/organDetails/calfMusDetails.dart';
import 'package:reflexology/organDetails/earDetails.dart';
import 'package:reflexology/organDetails/elbowdetails.dart';
import 'package:reflexology/organDetails/eyeDetails.dart';
import 'package:reflexology/organDetails/galBlaDetails.dart';
import 'package:reflexology/organDetails/heartDetails.dart';
import 'package:reflexology/organDetails/kidneyDetails.dart';
import 'package:reflexology/organDetails/kneeDetails.dart';
import 'package:reflexology/organDetails/largeIntesDetails.dart';
import 'package:reflexology/organDetails/liverDetails.dart';
import 'package:reflexology/organDetails/lungsDetails.dart';
import 'package:reflexology/organDetails/lymphDetails.dart';
import 'package:reflexology/organDetails/mouthDetails.dart';
import 'package:reflexology/organDetails/neckDetail.dart';
import 'package:reflexology/organDetails/noseDetails.dart';
import 'package:reflexology/organDetails/pancreaseDetails.dart';
import 'package:reflexology/organDetails/rectumDetails.dart';
import 'package:reflexology/organDetails/sciaticNervDetails.dart';
import 'package:reflexology/organDetails/shoulderDetail.dart';
import 'package:reflexology/organDetails/smallintesDetails.dart';
import 'package:reflexology/organDetails/spleendetails.dart';
import 'package:reflexology/organDetails/stomachDetails.dart';
import 'package:reflexology/organDetails/tracheaDetails.dart';
//import 'package:reflexology/reflexesDetails.dart';



class body extends StatefulWidget {
 // footPage({Key key, this.title}) : super(key: key);

  

 // final String title;

  @override
  _FootPageState createState() => _FootPageState();
}
class _FootPageState extends State<body>{
  @override
  Widget build(BuildContext context) {

    
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       debugShowCheckedModeBanner: false,
    );
   return Scaffold(
    
     
     backgroundColor: Colors.white,
    //  floatingActionButton: SizedBox(
    //    height: 60,
    //    child: FloatingActionButton.large(
    //      backgroundColor: Colors.white,
    //      child: Icon(Icons.close_sharp,size: 30,color: Colors.blue[200],),
    //      elevation: 30,      
    //      onPressed: (){}),
    //  ),
     
     
     
       appBar: AppBar(
      backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
      ),
      ),

      body:ListView(
      children: <Widget>[
        SizedBox(
            height: 120,
          ),
        Stack(
        children: <Widget> [
          Image(image:AssetImage('assets/bodypic.jpg') ),
          Positioned(
            left: 208,
            top: 4,
            child:InkWell(
  
              child:Text("Nose".toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => (noseDetail()))); },
              ),
              ),

            Positioned(
            right: 290,
            top: 42,
            child:InkWell(
  
              child:Text("Brain".toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.blue[900], fontWeight: FontWeight.bold )),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(BrainDetail())));},
              ),
              ),

              Positioned(
            left: 287,
            top: 50,
            child:InkWell(
  
              child:Text("Head".toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(stomackDetail())));},
              ),
              ),

              Positioned(
            right: 338,
            top: 58,
            child:InkWell(
  
              child:Text("Eye".toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => (eyeDetail())));},
              ),
              ),

              Positioned(
            right: 278,
            top: 71,
            child:InkWell(
  
              child:Text("Mouth".toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => (mouthDetail())));},
              ),
              ),

              Positioned(
            right: 341,
            top: 88,
            child:InkWell(
  
              child:Text("neck".toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(neckDetail())));},
              ),
              ),

              Positioned(
            right: 292,
            top: 109,
            child:InkWell(
  
              child:Text("HEART".toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(HeartDetail())));},
              ),
              ),

              Positioned(
            right: 285,
            top: 138,
            child:InkWell(
  
              child:Text("lymph".toUpperCase(),
              style: TextStyle(fontSize: 12, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(lymphDetail())));},
              ),
              ),

              Positioned(
            right: 305,
            top: 155,
            child:InkWell(
  
              child:Text("liver".toUpperCase(),
              style: TextStyle(fontSize: 12, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(liverDetail())));},
              ),
              ),

              Positioned(
            right: 256,
            top: 154,
            child:InkWell(
  
              child:Text("pancreas".toUpperCase(),
              style: TextStyle(fontSize: 10, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(pancreaseDetail())));},
              ),
              ),

               Positioned(
            right: 320,
            top: 178,
            child:InkWell(
  
              child:Text("gallbladder".toUpperCase(),
              style: TextStyle(fontSize: 12, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(galBlaDetail())));},
              ),
              ),

               Positioned(
            right: 290,
            top: 198,
            child:InkWell(
  
              child:Text("kidney".toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => (kidneyDetail()))); },
              
              ),
              ),

                Positioned(
            right: 288,
            top: 228,
            child:InkWell(
  
              child:Text("large intestine".toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(largeintesDetail())));},
              ),
              ),

                Positioned(
            right: 337,
            bottom: 241,
            child:InkWell(
  
              child:Text("rectum".toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(rectumDetail())));},
              ),
              ),
             Positioned(
            left: 245,
            top: 66,
            child:InkWell(
  
              child:Text("Ear".toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(earDetail())));},
              ),
              ),

              Positioned(
            left: 290,
            top: 92,
            child:InkWell(
  
              child:Text("Trachea".toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(tracheaDetail())));},
              ),
              ),
            

              Positioned(
            left: 334,
            top: 115,
            child:InkWell(
  
              child:Text("Shoulder".toUpperCase(),
              style: TextStyle(fontSize: 12, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => (shoulderDetail())));},
              ),
              ),

              Positioned(
            left: 290,
            top: 130,
            child:InkWell(
  
              child:Text("Lungs".toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(lungsDetail())));},
              ),
              ),

              Positioned(
            left: 270,
            top: 150,
            child:InkWell(
  
              child:Text("Arm".toUpperCase(),
              style: TextStyle(fontSize: 12, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(armDetail())));},
              ),
              ),

              Positioned(
            left: 305,
            top: 153,
            child:InkWell(
  
              child:Text("Stomach".toUpperCase(),
              style: TextStyle(fontSize: 12, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(stomackDetail())));},
              ),
              ),

              Positioned(
            left: 350,
            top: 180,
            child:InkWell(
  
              child:Text("Spleen".toUpperCase(),
              style: TextStyle(fontSize: 12, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(spleenDetail())));},
              ),
              ),

               Positioned(
            left: 295,
            top: 195,
            child:InkWell(
  
              child:Text("Elbow".toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(elbowDetail())));},
              ),
              ),

        Positioned(
            left: 296,
            top: 220,
            child:InkWell(
  
              child:Text("Small intestine".toUpperCase(),
              style: TextStyle(fontSize: 12, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(smallIntesDetail())));},
              ),
              ),

              Positioned(
            left: 330,
            top: 255,
            child:InkWell(
  
              child:Text("Bladder".toUpperCase(),
              style: TextStyle(fontSize: 13, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(BladderDetail())));},
              ),
              ),
Positioned(
            left: 265,
            bottom: 160,
            child:InkWell(
  
              child:Text("Knee".toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(kneeDetail())));},
              ),
              ),

              Positioned(
            right: 274,
            bottom: 137,
            child:InkWell(
  
              child:Text("Calf Muscles".toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(calfMusDetail())));},
              ),
              ),

              Positioned(
            right: 285,
            bottom: 215,
            child:InkWell(
  
              child:Text("Sciatic Nerves".toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.blue[900], fontWeight: FontWeight.bold )),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(sciaticNervDetail())));},
              ),
              ),
              
              Positioned(
            right: 158,
            top: 497 ,
            child:InkWell(
  
              child:Text("GO BACK".toUpperCase(),
              style: TextStyle(fontSize: 24, color: Colors.red[900], fontWeight: FontWeight.bold )),
             // onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => (MyHomePagee())));},
             onTap: (){Navigator.of(context).pop();},
              ),
              ),






              
              
              




        ],

      )
      ]
       ) ,
      );

      
  }

}