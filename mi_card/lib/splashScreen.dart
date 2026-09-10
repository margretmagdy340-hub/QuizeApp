
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_card/secondScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds:20),(){

Navigator.pushReplacement(context,
 MaterialPageRoute(
  
  builder:(context)=> const secondScreen(),
     ),);
    }
 );
  }
  @override
Widget build(BuildContext context) {
return Scaffold(

body:Stack( children:[  
Container(width: double.infinity,height: double.infinity,

child: Image.asset("assets/images/Background figma.png"), ),

 Center(
   child: Container(
   child: Image.asset("assets/images/logo-white 1.png")
   
   ),
 )
]));
}}