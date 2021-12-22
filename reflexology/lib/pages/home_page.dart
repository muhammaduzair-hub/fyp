


 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reflexology/pages/body.dart';
import 'package:reflexology/utils/color.dart';

class MyHomePagee extends StatefulWidget {
  
  //MyHomePage({Key key, this.title}) : super(key: key);

  

  //final String title;
 

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePagee> {
 
 final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black ,
  primary:Colors.amber ,
  minimumSize: Size(130, 50),
  shadowColor: Colors.blue[700],
  elevation: 30,
 // padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(100)),
  ),
);
  

  @override
  Widget build(BuildContext context) {
    
    return Container(
      
      child: Scaffold(
      
      
        
        backgroundColor:Colors.blueGrey[200],
        
      //  appBar: AppBar(
      //    backgroundColor: Colors.amber,
         
      //     title: Text('R E F L E X O L O G Y',style: TextStyle(fontWeight: FontWeight.bold)),
      //  ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color1, color2,color3
            ],
            end: Alignment.bottomLeft,
              begin: Alignment.topCenter),
            ),
          
          
          child: Column(
        //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 200,
                width: 500,
                child: Container(
             
                
                child: Image(
                  
                  image: AssetImage('assets/slogo.png'),
                  fit: BoxFit.contain,
                
                  
                  
                ),


                ),
              ),
              // Container(
             
             
              // child: Padding(
              //   padding: const EdgeInsets.fromLTRB(5, 500, 5, 10),
              //   child: ElevatedButton(
                  
              //     style: raisedButtonStyle,
                  
              //     onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => (footPage()))); },
              //     child: Text('F 0 0 T    C H A R T',style: TextStyle(fontWeight: FontWeight.bold)),
                  

              //     ),
              // )


              // ),
              //footlabelbutton
              // Container(
             
              // child: Padding(
              //   padding: const EdgeInsets.fromLTRB(5, 30, 5, 10),
              //   child: ElevatedButton(
                  
              //     style: raisedButtonStyle,
                  
              //     onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => (footInfoPage()))); },
              //     child: Text('F O O T   I N F O',style: TextStyle(fontWeight: FontWeight.bold),),
                  

              //     ),
              // )

              // ),
              Container(
                
             
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 150, 5, 20),
                child: ElevatedButton(
                  
                  
                  
                  style: raisedButtonStyle,
                  
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => (body()))); },
                  // child: Text('H A N D   I N F O',style: TextStyle(fontWeight: FontWeight.bold),),
                   child: Text('B O D Y',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 30,color: Colors.blue[700]),),
                  

                  ),
              )

              ),
              SizedBox(
                height: 30,
              ),
              Container(
               
              child: ElevatedButton(
                style: raisedButtonStyle,
                
                child: Text('E X I T',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 30,color: Colors.blue[700]),),
                onPressed: () {SystemNavigator.pop();},

                )
                

              )
              
              
              // child: Image(
              //   image: AssetImage('assets/skeletonnn.png'),
              //   fit: BoxFit.fitHeight,
                
                
              // ),
              
            ],
          ),
        ),
        
        
      ),
    );
  }
}
