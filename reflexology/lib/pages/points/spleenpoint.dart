
import 'package:flutter/material.dart';
import 'package:reflexology/model/organ_model.dart';
import 'package:reflexology/pages/home_page.dart';
//import 'package:reflexology/reflexesDetails.dart';



class spleenPoint extends StatefulWidget {
 // footPage({Key key, this.title}) : super(key: key);

  

 // final String title;

  @override
  _footPageState createState() => _footPageState();
}
class _footPageState extends State<spleenPoint>{

List<Organ> coments = [];

getComments() async{
  coments =await dbInstance.readNote("SPLEEN");
  setState(() {});
  print("============================================================${coments.length}");
}

@override
  void initState() {
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
              child: SizedBox(height: 600,
              width: 800,
                child: Image(
                  
                  image: AssetImage('assets/spleenP.jpg',),
                  
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
              
                prefixText: 'FEEDBACK : ',
                prefixIcon: Icon(Icons.feedback_outlined),

                // hintText: 'Type Here',
                // hintStyle: TextStyle(fontFamily: 'Cairo',fontStyle: FontStyle.italic,fontSize: 15)
                
              ),
              onFieldSubmitted: (val) async{
                Organ organ = Organ(title: "SPLEEN",comment: val );
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
               color: Colors.yellow,
               height: 50,
               width: double.infinity,
               child: ListView.separated(
                 scrollDirection: Axis.horizontal,
                 itemCount: coments.length,
                 itemBuilder: (context, index){
                   return Text(coments[index].comment);
                 },
                 separatorBuilder: (context, index){
                   return Text(",");
                 },
               ),
             ),

           Center(
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
           )
        ],
      ),
    
   );
  }

}