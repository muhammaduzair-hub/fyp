
import 'package:flutter/material.dart';
//import 'package:reflexology/reflexesDetails.dart';



class footInfoPage extends StatefulWidget {
 // footPage({Key key, this.title}) : super(key: key);

  

 // final String title;

  @override
  _footPageState createState() => _footPageState();
}
class _footPageState extends State<footInfoPage>{
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
     
      // appBar: AppBar(
      //   title: Text("Foot Reflexology"),
      // ),

      body: ListView(
        
        children: <Widget>[
          Center(
            child: InkWell(
            // child: Container(
            //   height: (MediaQuery.of(context).size.height)/2,
              child: SizedBox(height: 800,
              width: 800,
                child: Image(
                  
                  image: AssetImage('assets/footinfo.jpg'),
                ),
              ),
            
           // onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => reflexesDetailsPage()));},
            )
            )
        ],
      ),
   );
  }

}