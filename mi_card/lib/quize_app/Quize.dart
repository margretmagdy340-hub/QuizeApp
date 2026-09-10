import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mi_card/quize_app/Quize_data.dart';

class Quize extends StatefulWidget {
  const Quize({super.key});

  @override
  State<Quize> createState() => _QuizeState();
}

class _QuizeState extends State<Quize> {

QuizeData quize =QuizeData();



@override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: const Color.fromARGB(0, 51, 47, 1),

body:Container(
width:double.infinity,
child: Column(children: 
[SizedBox(height: 70),

Text(quize.QuizeDatalist[quize.questions].questions,
style: TextStyle(color: const Color.fromARGB(255, 7, 45, 102),fontSize: 60),
),
SizedBox(height: 70,),

Container(width: double.infinity,
child: ElevatedButton(onPressed:(){
  
quize.check(true);

},
style: ElevatedButton.styleFrom(backgroundColor: (const Color.fromARGB(248, 56, 112, 54)),
shape:RoundedSuperellipseBorder(borderRadius:BorderRadius.circular(10))),
child: Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 19),
child: Text("True",style:
TextStyle(color: const Color.fromARGB(255, 247, 245, 245),
fontSize: 40)))
)),
SizedBox(height: 70),

Container(width: double.infinity,
child: ElevatedButton(onPressed:(){

 quize.check(false);

},
style: ElevatedButton.styleFrom(backgroundColor: (const Color.fromARGB(160, 218, 23, 23)),
shape:RoundedSuperellipseBorder(borderRadius:BorderRadius.circular(15))

),

child: Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 19),
child: Text("false",style:TextStyle(color: const Color.fromARGB(255, 247, 245, 245),
fontSize: 40)),)
),),

Row(children: quize.icon)
],),)
);
}
}