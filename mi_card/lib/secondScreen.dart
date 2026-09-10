import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mi_card/ThirdScreen.dart';

class secondScreen extends StatefulWidget {
  const secondScreen ({super.key});

  @override
  State<secondScreen> createState() => _ScreenState();
}
class _ScreenState extends State<secondScreen> {

@override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column( children:[

SizedBox(height: 58),

Center(child: Image.asset("assets/images/logo-color 1.png",height: 81 , width: 103)),
     SizedBox(height: 32),
Center(
     child: Text("Sign in to your account",
      style:TextStyle(color: Color(0xff004643),
      fontWeight:FontWeight.w600,
      fontSize: 20,
      fontFamily:"Manrope" ) ),),

    SizedBox(height: 24),
    
      Container(padding: EdgeInsets.symmetric(horizontal: 24),
     child: Column(crossAxisAlignment:CrossAxisAlignment.start,
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

     SizedBox(height: 24),

    Align(alignment: AlignmentGeometry.bottomRight,
       child: Text("Forget password?",style:TextStyle(color: Color(0xff757575),
       fontSize: 16,fontFamily: "Manrope",fontWeight: FontWeight.w600 ),),),
        ],) ,
     ),
     
     SizedBox(height: 24),
    
    Row(children: [Icon(Icons.circle,color:Color(0xffF4F4F4)),
      Text("I've read and to",style: TextStyle(color: Color(0xff757575),
        fontSize: 14, fontWeight: FontWeight.w500,fontFamily: "Manrope"),),
          
           Text(" Use Agreement",style: TextStyle(color: Color(0xff004643),
           fontSize: 14, fontWeight: FontWeight.w500,fontFamily: "Manrope")),
           Text(" and",style: TextStyle(color: Color(0xff757575)),),
           Text(" Privacy policy",
           style:TextStyle (color: Color(0xff004643),
           fontSize: 14, fontWeight: FontWeight.w500,fontFamily: "Manrope")),]),
         
     SizedBox(height: 40),
    
       ElevatedButton(onPressed: (){}, 
       style:ElevatedButton.styleFrom(
        backgroundColor:Color(0xff004643),
       shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100) ),
              fixedSize:Size(312, 48)
       ),
       child:Text("Sign in",
       style: TextStyle(color: Color(0xffFFFFFF),fontSize: 14,
       fontWeight: FontWeight.w600,fontFamily: "Manrope" ) )
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
     SizedBox(height: 30),
    Row(mainAxisAlignment: MainAxisAlignment.center,
      children:[
   Text("Don't have an account?",
   style: TextStyle(color: Color(0xff757575),
   fontSize: 12, fontWeight: FontWeight.w400,fontFamily: "Manrope"
   ),),
    GestureDetector(onTap: (){Navigator.push(context,MaterialPageRoute(
        builder: (context) => const Thirdscreen()) );},
        
      child: 
     Text("Create Account",style: 
      TextStyle(color: Color(0xff004643),
     fontSize: 12,fontWeight: FontWeight.w600,fontFamily: "Manrope"
     )) )
     ]
    )
   ]
     ),
    );}}