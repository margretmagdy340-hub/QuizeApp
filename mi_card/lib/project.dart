import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Project extends StatelessWidget {
  const Project ({super.key});

@override
Widget build(BuildContext context) {
return Scaffold( 
  backgroundColor: const Color.fromARGB(88, 255, 255, 255),
 body: SingleChildScrollView (child:Column(
  crossAxisAlignment: CrossAxisAlignment.start,
children: [
Image.asset("assets/images/church.jpg",width: double.infinity,height: 260,fit: BoxFit.cover,),
Padding(padding: EdgeInsets.all(10),
child:Row(children:[ Expanded(
child: Column(  
crossAxisAlignment: CrossAxisAlignment.start, 
children: [
  Text("Oeschinen Lake Campground",
  style: TextStyle (fontWeight: FontWeight.bold, fontSize: 15,color: Colors.blue)),
  Text("'Kandersteg, Switzerland",style:
TextStyle(fontFamily:" Pacifico",fontSize: 10,color: CupertinoColors.destructiveRed),)],)),
SizedBox(width: 50),
Row(children: [
Icon(Icons.star,size: 20,),SizedBox(width: 10),
Text("41",style: TextStyle(color: const Color.fromARGB(255, 97, 3, 3),fontSize: 20),)
],)

],)),
Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [Column(children: [
    Icon(Icons.share),Text("share",style:TextStyle(color: Colors.teal,fontSize: 20))],),
Column(children: [
    Icon(Icons.route),Text("route",style:TextStyle(color: Colors.teal,fontSize: 20))],),
Column(children: [
    Icon(Icons.route),Text("route",style:TextStyle(color: Colors.teal,fontSize: 20))],),],),

Padding(padding: EdgeInsetsGeometry.all(15),
child:  Text("""
Lake Oeschinen lies at the foot of the Blüemlisalp in the 
 Bernese Alps. Situated 1,578 meters above sea level, it is 
one of the larger Alpine Lakes. A gondola ride from 
Kandersteg, followed by a half-hour walk through pastures 
and pine forest, leads you to the lake, which warms to 20 
degrees Celsius in the summer. Activities enjoyed here 
include rowing, and riding the summer toboggan run
""",style: TextStyle(height: 1.5),),
),
SizedBox(height: 20,)
 ],)),


);
}}