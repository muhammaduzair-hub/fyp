
import 'package:flutter/material.dart';
import 'package:reflexology/pages/home_page.dart';
//import 'package:reflexology/reflexesDetails.dart';



class armPoint extends StatefulWidget {
 // footPage({Key key, this.title}) : super(key: key);

  

 // final String title;

  @override
  _footPageState createState() => _footPageState();
}
class _footPageState extends State<armPoint>{
  @override
  Widget build(BuildContext context) {
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       debugShowCheckedModeBanner: false,
    );
   return Scaffold(
     
    //  backgroundColor: Colors.lightBlueAccent[100],
     
     backgroundColor: Colors.white,
     
      appBar: AppBar(
      backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
      ),
      ),

      body: ListView(
        
        children: <Widget>[
          Center(
            child: InkWell(
            // child: Container(
            //   height: (MediaQuery.of(context).size.height)/2,
              child: SizedBox(height: 600,
              width: 800,
                child: Image(
                  
                  image: AssetImage('assets/armp.jpg',),
                  
                ),
              ),
            
           // onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => reflexesDetailsPage()));},
            ),
            ),
             Center(
             child: Padding(
               padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
               child: SizedBox(
                 height: 50,
                 width: 120,
                 child: ElevatedButton(
                   
                   style: ElevatedButton.styleFrom(
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),
                     shadowColor: Colors.blue,
                     elevation: 10,
                     visualDensity: VisualDensity.standard,
                     primary: Colors.red[100],
                     
                   ),
                   
                   
                   child: Text('Main Menu',style: TextStyle(color: Colors.redAccent,fontSize: 20,fontWeight: FontWeight.w400)),
                   
                   onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => (MyHomePagee())));},),
                     ),
             ),
           )
        ],
      ),
   );
  }

}