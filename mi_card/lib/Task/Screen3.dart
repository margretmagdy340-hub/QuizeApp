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
    child: Column(
      children: [
        
        SizedBox(height: 30),
        Text("Vegetables",style: 
        TextStyle(color: Color(0xff1E1E1E),
        fontSize:20,
        fontWeight: FontWeight.w500),
        
        ),
    
     ],),
  )),

 );}}