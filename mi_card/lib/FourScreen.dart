import 'package:flutter/material.dart';

class Fourscreen extends StatefulWidget {
  const Fourscreen ({super.key});

  @override
  State<Fourscreen> createState() => _FourState();
}

class _FourState extends State<Fourscreen> {

@override
  Widget build(BuildContext context) {
    return Scaffold(
body:Container(
height: 206,
width: 474,
padding:EdgeInsets.all(8),
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(6),
color: Color(0xffFFFFFF),),


child: Row(
  children: [

 Container(
  child: 
  Stack(alignment: AlignmentGeometry.center,
    children: [

Container(
height: 190,
width: 224,
decoration: BoxDecoration(
color: Color(0xffF7F7F7),
),
),

  Container(
  height: 153.16 ,width: 140,
  child: Image.asset("assets/images/MX442 1.png"),),

   ], ),),

SizedBox(width: 8),

Container(
height: 190,
width: 224,
child: Column(crossAxisAlignment: CrossAxisAlignment.start,
  children: [

Text("Beats Studio Pro",
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.w700,
color: Color(0xff000000)
),),

Text("\$349.99",
style: TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600,
  color: Color(0xff000000)
),),

SizedBox(height: 8),

Container(
  height: 18,
  width:224,

 child: Row(
  children: [

 Container(height: 18,width:41,
     decoration: BoxDecoration(color:Color(0xff666666),
     borderRadius: BorderRadius.circular(4) ),
     padding: EdgeInsets.symmetric(horizontal: 8,vertical: 1),
     child: Text("USB C",style: 
     TextStyle(color: Color(0xffFFFFFF),fontSize: 8,
     fontWeight: FontWeight.w400
     ),)
     ),

SizedBox(width:3),

Container(height: 18,width:76,
     decoration: BoxDecoration(color:Color(0xff666666),
     borderRadius: BorderRadius.circular(4) ),
     padding: EdgeInsets.symmetric(horizontal: 8),
     child: Text("Noise Cancelling",style: 
     TextStyle(color: Color(0xffFFFFFF),fontSize: 8,  
      fontWeight: FontWeight.w400,
     
     ),)
     ),
SizedBox(width:3),

Container(height: 18,width:87,
     decoration: BoxDecoration(color:Color(0xff666666),
     borderRadius: BorderRadius.circular(4) ),
     padding: EdgeInsets.symmetric(horizontal: 8,vertical: 1),
     child: Text("Transparency Mode",style: 
     TextStyle(color: Color(0xffFFFFFF),fontSize: 8,  
      fontWeight: FontWeight.w400,
),)
     ),]),),

 
SizedBox(height: 8),
Container(height: 60,width: 224,
child: Text("""High-fidelity lossless audio via USB-Cfootnote1

Active Noise Cancelling and Transparency mode

Up to 40 hours of listening time footnote3""",
style: TextStyle(color: Color(0xff000000),
fontSize: 9,
fontWeight: FontWeight.w400
),)
),
SizedBox(height:8),


Container(
  child: Row(
    children: [
      ElevatedButton(onPressed: (){}, child:
      Text("Add to card",style: TextStyle(color: Color(0xffFFFFFF),fontSize: 10,
      fontWeight: FontWeight.w400,
      
      ),),
      style: ElevatedButton.styleFrom(
      fixedSize: Size(108, 32),backgroundColor: Color(0xff000000),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      )
      ),
      ),
SizedBox(width: 8),

ElevatedButton(onPressed: (){}, child:
Text("View Details",style: TextStyle(color: Color(0xff212121),fontSize: 10,
fontWeight: FontWeight.w400,),),
style: ElevatedButton.styleFrom(
fixedSize: Size(108, 32),
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(4),
  side:BorderSide(color: Color(0xff212121))
)
),
)

    ],
  ),
),






],))

  ]
)
)
); }}