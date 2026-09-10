import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
int counter=0;
  @override
 Widget build(BuildContext context) {
 return Scaffold(
body:Column(children: [

Text(counter.toString(),style:
 TextStyle(color: const Color.fromARGB(255, 9, 16, 109),fontSize:30,),),
     
Row(children: [
GestureDetector(onTap: (){ setState(() {counter++;});},child:
Container( child:Icon(Icons.add),width: 50,
height: 50,
color:Color.fromARGB(255, 79, 70, 160)),),

SizedBox(width: 50),   

GestureDetector(onTap: () {setState(() {counter--; });},child: 
 Container(child:Icon(Icons.minimize_sharp),width:50,height:50,color:Colors.deepPurpleAccent,),)
      
      
]
       
) , 

]
)
);
}
}