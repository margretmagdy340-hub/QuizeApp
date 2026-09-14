import 'package:flutter/material.dart';

class screen3 extends StatefulWidget{
const screen3 ({super.key});

@override
State<screen3> createState()=> _Screen3State();
}

class _Screen3State extends  State<screen3>{
@override
Widget build(BuildContext context){
 return Scaffold(
  appBar:AppBar
  (title: Text("Create your order"),),

  body: SafeArea(child: 
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: SingleChildScrollView(
      child: Column(
        children: [
        
          SizedBox(height: 30),
           Align(alignment: AlignmentGeometry.topStart,
             child: Text("Vegetables",style: 
                  TextStyle(color: Color(0xff1E1E1E),
                  fontSize:20,
                  fontWeight: FontWeight.w500),
                  ),
                 ),
          Container(
            child: 
             Row(
              children: [
                
               Container(
                 child: Column(
                   children: [

                     Card(
                     shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(12)),
                     child: Expanded(
                       child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                         child: Image.asset("assets/images/image1v.png",
                         fit: BoxFit.cover,
                         height: 108,
                         width: 163,),
                         
                       ),
                     ),
                     )
                    
                     
                   ],
                   
                 ),
               
               )
              ],
            ),
          ),
      
       ],),
    ),
  )),

 );}}