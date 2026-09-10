import 'package:flutter/material.dart';
import 'package:mi_card/secondScreen.dart';

class Thirdscreen extends StatefulWidget {
  const Thirdscreen ({super.key});

  @override
  State<Thirdscreen> createState() => _ThirdState();
}

class _ThirdState extends State<Thirdscreen> {

@override
  Widget build(BuildContext context) {
 return Scaffold(
body: Container(width:double.infinity,height: double.infinity,
 child:Column(children: [
SizedBox(height: 58),
   Center(
     child: Container(height: 81, width: 260,
     child: Image.asset("assets/images/logo-color 1.png"), 
     )
   ),
SizedBox(height: 32),
Text("Crete new account",
style: TextStyle(color: Color(0xff004643),
fontSize: 20,fontWeight: FontWeight.w600,
fontFamily: "Manrope"),),

SizedBox(height: 24),

Container( padding: EdgeInsets.symmetric(horizontal: 24),
  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
  children: [
Text("Email Address",style:TextStyle (color:Color(0xff000000),
         fontWeight:FontWeight.w600,
         fontSize: 14,fontFamily: "Manrope" )),
    SizedBox(height: 8),
   TextField(
   decoration: InputDecoration(
     hintText: 'Enter your email address',
   
    enabledBorder: OutlineInputBorder(
   borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: Color(0xffC4C4C4))),
         
   focusedBorder: OutlineInputBorder(
   borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Color(0xff004643))))),
               
     
     SizedBox(height: 16,),
     Text("Password",
     style: TextStyle(color:Colors.black,
     fontWeight:FontWeight.w600,
     fontSize: 14,fontFamily: "Manrope"
     ), ),
         SizedBox(height: 8),

     TextField(
     decoration: InputDecoration(
     hintText: "Enter your Password", 
     suffixIcon:Icon(Icons.visibility_off_outlined),
     
     enabledBorder:OutlineInputBorder(
     borderRadius:BorderRadius.circular(8),
     borderSide:BorderSide(color: Color(0xffC4C4C4))),
     
     focusedBorder:OutlineInputBorder(
     borderRadius: BorderRadius.circular(10),
     borderSide: BorderSide(color: Color(0xff004643))))),
          SizedBox(height: 16,),

Text("Confirm Password",style: TextStyle(color: Color(0xff000000),
fontSize: 14,fontWeight: FontWeight.w600,fontFamily: "Manrope"),),
    SizedBox(height: 8),

TextField(decoration: InputDecoration(
  hintText: "Enter your confirm password",
  suffixIcon: Icon(Icons.visibility_off_outlined),

  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: Color(0xffC4C4C4))
  ),
 focusedBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide: BorderSide(color: Color(0xff004643))
 )

),)
],) ),
    SizedBox(height: 32),

 Row(children: [Icon(Icons.visibility_off_outlined,color: Color( 0xffFFFFFF),),
             Text("I've read and to",style: TextStyle(color: Color(0xff757575),
             fontSize: 14, fontWeight: FontWeight.w500,fontFamily: "Manrope"),),
          
           Text(" Use Agreement",style: TextStyle(color: Color(0xff004643),
           fontSize: 14, fontWeight: FontWeight.w500,fontFamily: "Manrope")),
           Text(" and",style: TextStyle(color: Color(0xff757575)),),
           Text(" Privacy policy",
           style:TextStyle (color: Color(0xff004643),
           fontSize: 14, fontWeight: FontWeight.w500,fontFamily: "Manrope")),]),
        
  SizedBox(height: 40) ,  

ElevatedButton(onPressed: (){}, child: Text("Sign in",style: TextStyle(
  color: Color(0xffFFFFFF),fontSize: 14,
       fontWeight: FontWeight.w600,fontFamily: "Manrope"
  ),),
  style: ElevatedButton.styleFrom(backgroundColor: Color(0xff004643),
  fixedSize: Size(312,48)),
  ),
SizedBox(height: 16),
 Text("other way to sign in",style: TextStyle(
      fontSize: 12,color: Color(0xff757575),
      fontWeight:FontWeight.w400,fontFamily: "Manrope" ),),

     SizedBox(height: 16),
   Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [
    
     Image.asset("assets/images/google-icon.png",height: 48,width: 48),
     SizedBox(width: 8),

     Image.asset("assets/images/facebook-icon.png",height: 48,width: 48)
     ]),
     SizedBox(height: 40),

Row(mainAxisAlignment: MainAxisAlignment.center,
      children:[
   Text("Already have an account?",
   style: TextStyle(color: Color(0xff757575),
   fontSize: 12, fontWeight: FontWeight.w400,fontFamily: "Manrope"
   ),
   
   ),

        GestureDetector(onTap: (){
Navigator.push(context,MaterialPageRoute(builder: ((context) =>secondScreen() )));

        },child: Text("Back to Sign In",style: 
    TextStyle(color: Color(0xff004643),
fontSize: 12,fontWeight: FontWeight.w600,fontFamily: "Manrope"
    )) )
    ])

],),

     )
 

    );}}