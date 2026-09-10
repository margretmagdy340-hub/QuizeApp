import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_card/counter_app/counter.dart';

class Quize2 extends StatefulWidget {
  const Quize2({super.key});

  @override
  State <Quize2> createState() => _Quize2State();
}

class _Quize2State extends State<Quize2> {

List<String>quations=[
"ht1",
"ht2",
"ht3",
"ht4",
];
List<bool>Answers=
[
true,
false,
true,
false,
];
List<Icon>icon=[];
int counter=0;

void check(bool userAnswers){
setState(() {
  if(userAnswers==Answers[counter]){
icon.add(Icon(Icons.check,color: Colors.green));
}

else{
icon.add(Icon(Icons.close,color: Colors.red,));
}
counter++;

});}
@override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(child: Column(children: [

Text(quations[counter],style: TextStyle(color: Colors.black12)),

SizedBox(height: 30),
ElevatedButton(onPressed:(){

  check(true);
 
},

 child: Text("True",style: TextStyle(color: const Color.fromARGB(190, 8, 117, 108))),
 ),

SizedBox(height: 30),

ElevatedButton(onPressed: (){
check(false);

}, child: Text("false",style: TextStyle(color: Colors.red),)),

Row(children: icon)

],))

    );

}}