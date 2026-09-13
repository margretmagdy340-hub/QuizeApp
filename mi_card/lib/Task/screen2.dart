import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget{
const Screen2 ({super.key});

@override
State<Screen2> createState()=> _Screen2State();
}

class _Screen2State extends  State<Screen2>{
@override
Widget build(BuildContext context){
 return Scaffold(
  appBar: AppBar(title: 
  Text("Enter your details",
  style: TextStyle(
    color: Color(0xff1E1E1E),
    fontSize: 20,
    fontWeight: FontWeight.w500)),),
   body: SafeArea(
     child: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 24),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(height: 31),
        Text("Gender",
        style: TextStyle(color: Color(0xff474747),
        fontSize: 14,
        fontWeight: FontWeight.w500)),
       
        SizedBox(height: 10),
       
       TextField (
        decoration: InputDecoration(
        hintText: "Choose your gender",
       
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Color(0xffEAECF0),)) ) ),
       
          SizedBox(height: 24),
       
           Text("Weight",style: TextStyle(color: Color(0xff474747),
           fontSize: 14,
           fontWeight: FontWeight.w500),),
       
          TextField(
            decoration: InputDecoration(
              hintText:"Enter your weight" ,
       
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Color(0xffEAECF0))),
       
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Color(0xffEAECF0)) )
            ),
          )
          
         ],),
     ))
);
}}