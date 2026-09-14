import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mi_card/counter_app/counter_controller.dart';

class counter extends StatelessWidget{
counter({super.key});

final CounterController controller = Get.put(CounterController());
@override
 Widget build(BuildContext context){
  return Scaffold(
    body: Column(
      children: [
      Obx((){
        return Text(
        controller.counter.toString(),style:
         TextStyle(color: const Color.fromARGB(204, 98, 10, 114),
         fontSize: 100)
        ) ;}),

        SizedBox(height: 20),
    Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(onTap:(){
           controller.increment();},
           child: Container(
           height: 50,width: 50,
           color: const Color.fromARGB(255, 36, 75, 143),
           child: Icon(Icons.add)
            )),
      
       SizedBox(width: 30,),
       GestureDetector(onTap:(){controller.increment2();},
       child: Container(height: 50,width: 50,
       color: const Color.fromARGB(255, 33, 155, 108),child: Icon(Icons.add),
      ),
     ),
      SizedBox(width: 30,),
    
      GestureDetector(onTap: (){controller.increment3();},
      child: Container(
       height: 50,width: 50,
       color: const Color.fromARGB(255, 95, 25, 54),
       child: Icon(Icons.add)
        )),
              SizedBox(width: 30,),
    
        GestureDetector(onTap: (){controller.decrement();},
        child:Container(height: 50,width: 50,
        color: const Color.fromARGB(255, 124, 14, 109),
        child: Icon(Icons.minimize),)
        )
       ]  ) ],),
  );
 }
 
}