
import 'package:flutter/material.dart';
import 'package:reflexology/model/organ_model.dart';
import 'package:reflexology/pages/home_page.dart';
//import 'package:reflexology/reflexesDetails.dart';



class smallintesPoint extends StatefulWidget {
 // footPage({Key key, this.title}) : super(key: key);

  

 // final String title;

  @override
  _footPageState createState() => _footPageState();
}
class _footPageState extends State<smallintesPoint>{
 
List<Organ> coments = [];

getComments() async{
  coments.clear();
  coments =await dbInstance.readNote("SMALL_INTESTINE");
  setState(() {});
}

@override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    getComments();
  }

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
              child: SizedBox(height: 450,
              width: 800,
                child: Image(
                  
                  image: AssetImage('assets/smallIntes.jpg',),
                  
                ),
              ),
            
           // onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => reflexesDetailsPage()));},
            ),
            ),
            Center(child: SizedBox(height: 70,
            width: 360,
              child: Container(child:TextFormField
              (decoration: InputDecoration( 
                
                border: OutlineInputBorder(
                  
                  borderSide: BorderSide(width: 2),
                  borderRadius: const BorderRadius.all(const Radius.circular(40.0),),
                  
                ),
                
                hintText: 'Write Something about Pressure Point ',
               // prefixText: 'FEEDBACK : ',
               // prefixIcon: Icon(Icons.feedback_outlined),

                // hintText: 'Type Here',
                // hintStyle: TextStyle(fontFamily: 'Cairo',fontStyle: FontStyle.italic,fontSize: 15)
                
              ),
              onFieldSubmitted: (val) async{
                Organ organ = Organ(title: "SMALL_INTESTINE",comment: val );
                Organ test =await dbInstance.create(organ);
                getComments();
              },
              cursorHeight: 18,
              cursorColor: Colors.black,
              cursorRadius:Radius.elliptical(1, 2),
              maxLength: 100,
               ) ,
               ),
            ),
             ),

             Container(
               
               color: Colors.grey[100],
               height: 170,
               width: double.infinity,
               child: ListView.separated(
                 shrinkWrap: true,
                 scrollDirection: Axis.vertical,
                 itemCount: coments.length,
                 itemBuilder: (context, index){
                   return ListTile(
                     title: Text(coments[index].comment),
                     trailing: Wrap(
                       children: [
                         //Edit Button
                         IconButton(
                           icon: Icon(Icons.edit),
                           onPressed: (){
                             TextEditingController text = TextEditingController(text: coments[index].comment);
                             showDialog(
                               barrierDismissible: false,
                               context: context,
                               builder: (context) => AlertDialog(
                                 title: TextField(
                                   controller: text,
                                 ),
                                 actions: [
                                   ElevatedButton(
                                     child: Text("OK"),
                                     onPressed: () async{
                                       coments[index].comment = text.text;
                                       await dbInstance.update(coments[index]);
                                       Navigator.pop(context);
                                       setState(() {});
                                     },
                                   ),
                                   ElevatedButton(
                                     child: Text("Cancel"),
                                     onPressed: (){
                                       Navigator.pop(context);
                                     },
                                   ),
                                 ],
                               ),
                             );
                            
                           },
                         ),
                         //Delete Button
                         IconButton(
                           icon: Icon(Icons.delete),
                           onPressed: () async{
                             await dbInstance.delete(coments[index].id);
                             getComments();
                             setState(() {});
                           },
                         )
                       ],
                     ),
                   );
                 },
                 
                 separatorBuilder: (context, index){
                   return Divider(thickness: 1,);
                 },
               ),
             ),

           Center(
             child: Padding(
               padding: const EdgeInsets.all(10.0),
               child: Container(
                
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
             ),
           )
        ],
      ),
    
   );
  }

}