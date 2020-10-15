import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';

class CalculatePage extends StatefulWidget {
  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage>
 {
   String Sameer="";
 final TextEditingController initial = TextEditingController();
 final TextEditingController finaal = TextEditingController();
 final TextEditingController rate = TextEditingController();
 final FlutterTts flutterTts = FlutterTts();
 @override
 Widget build(BuildContext context) {
   Future _speak() async{
     await flutterTts.speak( Sameer + "रूपये");
   }
     return Scaffold(
       appBar: AppBar(
           title: Center(
             child: Text("मीटर बिल कैलकुलेटर - कैलकुलेट"),
           )),
       body: Center(
         child: Container(
           child: Column(
             children: <Widget>[
               Container(
                 padding: EdgeInsets.only(left:8.00,right: 30.00,top:10.0,bottom:10.0),
                 child: TextField(
                   controller: initial,
                   inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                   keyboardType: TextInputType.number,
                   style: TextStyle(
                     fontSize: 20.0,
                     color: Colors.black,
                   ),
                   decoration: InputDecoration(
                     contentPadding: EdgeInsets.only(bottom:1.0,top:10.0),
                     labelText: "पिछली रीडिंग",
                   ),
                 ),
               ),
               Container(
                 padding: EdgeInsets.only(left:8.00,right: 30.00,bottom:10.0),
                 child: TextField(
                   controller: finaal,
                   inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                   keyboardType: TextInputType.number,
                   style: TextStyle(
                     fontSize: 20.0,
                     color: Colors.black,
                   ),
                   decoration: InputDecoration(
                     contentPadding: EdgeInsets.only(bottom:1.0,top:10.0),
                     labelText: "अभी की रीडिंग",
                   ),
                 ),
               ),
               Container(
                 padding: EdgeInsets.only(left:8.00,right: 30.00,bottom:10.0),
                 child: TextField(
                   controller: rate,
                   inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                   keyboardType: TextInputType.number,
                   style: TextStyle(
                     fontSize: 20.0,
                     color: Colors.black,
                   ),
                   decoration: InputDecoration(
                     contentPadding: EdgeInsets.only(bottom:1.0,top:10.0),
                     labelText: "रूपये / यूनिट",
                   ),
                 ),
               ),
               Flexible(

                 child: Row(
                     children : [
                       Container(
                         padding: EdgeInsets.only(left : 20.0,bottom : 30.0,right: 10.0),
                         child: FlatButton(
                           onPressed:() {_speak();Hadaal();},
                           child: Text("कैलकुलेट"),
                           color: Colors.blueAccent,
                           textColor: Colors.white,
                           padding: EdgeInsets.all(15.0),
                         ),
                       ),
                       Result(Sameer),
                     ]
                 ),
               ),
             ],
           ),
         ),
       ),
     );
  }
   void Hadaal(){

     Sameer="12345";
     int A =int.parse(initial.text);
     int B =int.parse(finaal.text);
     int C =int.parse(rate.text);
     int D =(B-A)*C;
     Sameer=D.toString();
     if(D<1000)
     {
       Sameer=' '+Sameer;
     }
     setState(() {

     });

   }
   Widget Result(Sameer) {

     String samosa =Sameer;
     if(Sameer.length<=0)
     {
       return Container();
     }
     else {
       return Container(
         padding: EdgeInsets.only(top: 20.0),
         child: Column(
           children: [
             Container(
               child: Text(samosa,
                   style: TextStyle(
                     fontSize: Sameer.length>4?58.0:70.0,
                     fontWeight: FontWeight.bold,
                   )),
             ),
             Text("रूपये",
                 style: TextStyle(
                   fontSize: 20.0,
                   fontWeight: FontWeight.bold,
                 )),
           ],
         ),
       );
     }
   }
 }