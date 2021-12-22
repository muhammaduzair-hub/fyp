
import 'package:flutter/material.dart';
import 'package:reflexology/pages/points/kneePoint.dart';

class kneeDetail extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.red,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                
                decoration: BoxDecoration(
                  color: Colors.white,  
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),

                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image:AssetImage('assets/technique1.jpg',) 
                    ),
                ),

              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('KNEE:',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                        ),
                     //heart detail 
                      ),
                      // Container(
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: <Widget>[
                      //       Text('',
                      //       style: TextStyle(
                      //         fontSize: 20,
                      //         fontWeight: FontWeight.bold,
                      //         color: Colors.blue
                      //         ),
                            
                      //       ),

                            ///////////////////////////////////////////////////////////
                            // Container(
                            //   height: 40,
                            //   width: 90,
                            //   decoration: BoxDecoration(
                            //      color: Colors.red,
                            //     borderRadius: BorderRadius.circular(40)
                            //   ),
                            //   // child: ListTile(
                            //   //   leading: IconButton(
                                 
                            //   //    icon: Icon(
                            //   //      Icons.play_circle,
                            //   //      color: Colors.black,
                            //   //    ),
                            //   //     onPressed: (){}, 
                            //   //    ),
                            //   // ),
                            //   child: Row(
                            //     children: <Widget>[
                            //       IconButton(
                            //         onPressed: (){},
                            //         icon: Icon(Icons.play_circle),
                            //       )


                            //   ],),
                             
                              

                            // ),
                    
                      //     ],
                      //   ),
                      // ),
                      // Text('How To Massage :',
                      //  style: TextStyle(
                      //   fontSize: 22,
                      //   fontWeight: FontWeight.bold
                      //   ),
                      //   ),
                        //SizedBox(height: 10,),
                        Text('Apply firm pressure- Press the pressure points gently and only for 1 to 3 minutes. If you are muscular then you can increase the pressure. Use the right fingers- Use your middle finger to press into the point firmly. In some cases, you can use your thumb or knuckle too.',
                        //Text('On the left side on the ball of the foot is said to be the place connected to the heart. It might be a bit difficult to nail but its right below the bottom of the toes. Massaging this place improves blood flow in the body and is highly beneficial to the overall circulatory system and heart health.',
                        style: TextStyle(fontSize: 25,
                        fontFamily: 'Lacquer',
                        fontWeight: FontWeight.normal,color: Colors.blue,
                         fontStyle: FontStyle.italic
                         ),
                        
                        ),
                        Center(
                          child: Container(
                            height: 58,
                            width: 170,
                            // ignore: deprecated_member_use
                            child: ElevatedButton(
                   
                   style: ElevatedButton.styleFrom(
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),
                     shadowColor: Colors.blue,
                     elevation: 10,
                     visualDensity: VisualDensity.standard,
                     primary: Colors.red[100],
                   ),
                   child: Text('Pressure Point',style: TextStyle(color: Colors.redAccent,fontSize: 22,fontWeight: FontWeight.w400)),
                     onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => (kneePoint()))); },

                            ),

                            //color: Colors.red,
                            
                          ),
                        )
                      
                    ],
                  ),
                ),

            )),
          ],
          
          
        ),
      ),
      
    );
  }
}